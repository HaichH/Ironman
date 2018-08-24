<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require_once 'DBModels/DBModelReferee.php';
$action = filter_input(INPUT_POST, 'action');
if($action == NULL) {
		$action = filter_input(INPUT_GET, 'action');
		if($action == NULL) {
			$action = 'dashboard';
		}
}
$referee = new DBModelReferee();
switch ($action){
    
    case'dashboard':
        include 'index.html';
       break;
   
   case'login':
       
       $email = filter_input(INPUT_POST, 'email_add');
       $pass = filter_input(INPUT_POST, 'password');
       
       if (!isset($email)||!isset($pass)) {
           include 'Referee/login.php';
       }else if(isset($email) && isset($pass)){
           //Read from DB
           $user = $referee->login_user($email, $pass);
           if ($user==NULL) {
               //If login credentials are invalid initialize invalid variable
               $invalid_user = TRUE;
               include 'Referee/login.php';
           }else{
               //Direct to new page
               include 'Referee/index.php';
           }
       }
       
       break;
   
    case 'find_user_penalties':
        $ath_id = filter_input(INPUT_POST, 'athlete');
        
        $user_flagged = $referee->check_disqualification($ath_id);
        if ($user_flagged==NULL) {
            //Guy hasn't been Disqualified
            $wait_details = $referee->getAthleteMinutes($ath_id);
            if ($wait_details==NULL) {
                //Guy can proceed 
                $return_data = array("Allow"=>0,
                    "Reason"=> "Double check Athlete number - If correct, Athlete may proceed."
                           ); 
            }else{
                //Guy has to wait for minutes to elapse
                $drawHTML = '<table border="1" class="line table table-bordered"><tr>'
                        . '<td>Surname: '.$wait_details[0][0].'</td>'
                        . '<td>Athlete ID: '.$wait_details[0][1].'</td> '
                        . '<td> Time Due:'.$wait_details[0][2].'</td>'
                        . '<td><input type="button" value="Start Countdown" onclick="StartTimer('.$wait_details[0][1].','.$wait_details[0][2].')"></td>'
                        . '<td id="'.$wait_details[0][1].'"></td>'
                        . '</tr></table>';
                $return_data = array("Allow"=>1,
                    "Reason"=> "There could be more than one reason.",
                    "html_draw"=> $drawHTML
                           ); 
            }
        }else{
            //Guy has been Disqualified 
            $return_data = array("Allow"=>2,
                 "Reason" => "Athlete has been Disqualified, Query Athlete page to find out."         
                           ); 
        }
        $return_data = json_encode($return_data);
                   echo $return_data;
        break;
    
    
    
    case 'overview_data':
        $overview_data  = $referee->getOverview();
       
                   $return_data = array("AllPenalties"=>$overview_data[0][0],
                           "TentOne"=>$overview_data [0][1],
                           "TentTwo"=>$overview_data [0][2],
                           "RedCards"=>$overview_data [0][3]
                           ); 
                   $return_data = json_encode($return_data);
                   echo $return_data;
        break; 
    
    case 'pending_penalties':
        $pending = $referee->getPendingPenalties();
//        $results ='';
//        if ($pending==NULL) {
//            $results.='<tr><td>Nothing for now</td></tr>';
//        } else {
//           
//            foreach ($pending as $value) {
//                $results.='<tr>';
//                $results.= '<td>'.$value[0].'</td> <td>'.$value[1].'</td> <td>'.$value[2].'</td> <td>'.$value[3].'</td> ';
//               $results.='</tr>'; 
//            }
//            
//        }
//        
//         $return_data = array("pending_people" => $results);
//        $return_data = json_encode($return_data);
//        echo $return_data;
        
        $return_data = json_encode($pending);
        echo $return_data;
        break;
        
    case 'update_penalty':
        $start_time = filter_input(INPUT_POST,'start_time');
        $end_time = filter_input(INPUT_POST, 'end_time');
        $user_id = filter_input(INPUT_POST, 'ath_id');
        $inserted = $referee->UpdatePenalty($user_id, $start_time, $end_time);
        $return_data = array("results" => $inserted);
        $return_data = json_encode($return_data);
        echo $return_data;
    break;

case 'get_disq':
     $disq = $referee->getDesqualified();
//        $results ='';
//        if ($disq==NULL) {
//            $results.='<tr><td>Nothing for now</td></tr>';
//        } else {
//           
//            foreach ($disq as $value) {
//                $results.='<tr>';
//                $results.= '<td> Racer ID: '.$value[0].'</td>';
//               $results.='</tr>'; 
//            }
//            
//        }
        
//         $return_data = array("disq_people" => $results);
        $return_data = json_encode($disq);
        echo $return_data;
    break;

    case 'arrive_time':
    $ath_id = filter_input(INPUT_GET, 'ath_id');
    $time = filter_input(INPUT_GET, 'time_arrived');
    $success = $referee->addArrivalTimestamp($ath_id, $time);
    $return_data = json_encode($success);
        echo $return_data;
    break;

    case 'departure_time':
     $ath_id = filter_input(INPUT_GET, 'ath_id');
    $time = filter_input(INPUT_GET, 'time_left');
    $success = $referee->addDepatureTimeStamp($ath_id, $time);
    $return_data = json_encode($success);
        echo $return_data;
    break;

    case'view_administered':
        include 'Referee/blank.html';
    break;

    case 'get_all_adminstered':
        $adminstered = $referee->getAdministered();
        $return_data = json_encode($adminstered);
        echo $return_data;
        break;
    
    case'pdf_admin':
        $adminstered = $referee->pdf_administered();
         include 'Referee/documents.php';
        break;
    
    case'pdf_dis':
        $disq = $referee->pdf_disqualified();
         include 'Referee/documents.php';
        break;
    
    case'pdf_un_admin':
        $un_admin = $referee->pdf_un_administered();
       include 'Referee/documents.php';       
        break;
    
    case'pdf_history':
        $ath_id = filter_input(INPUT_GET, 'ath_id');
        $history = $referee->pdf_rider_history($ath_id);
         include 'Referee/documents.php';
        break;
    
    case'docs':
       include 'Referee/documents.php';
        break;
}

