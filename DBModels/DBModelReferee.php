<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 
 * public function check_user_existant($email) {
         $stored_procedure ="uspWEBCheckExistance(?)";
        $param = array(
            $email
        );
        return DBhelper::sp_SelectWithParams($stored_procedure, $param);
    }
 */

/**
 * Description of DBModelReferee
 *
 * @author s217057098
 */

require_once 'DBhelper.php';
class DBModelReferee {
    
    //put your code here
    function __construct() {
        
    }
    function login_user($username, $password) {
        $stored_procedure ="uspLogin(?,?)";
        $param = array(
            $username,
            $password
        );
        return DBhelper::sp_SelectWithParams($stored_procedure, $param);
    }
    
    function getOverview() {
        $stored_procedure ="uspWEBGetOverview";
        return DBhelper::sp_SelectStatement($stored_procedure);
    }
    
    function getAthleteMinutes($ath_id) {
        $stored_procedure ="uspWEBAthPenalties(?)";
        $param = array(
            $ath_id,
            
        );
        return DBhelper::sp_SelectWithParams($stored_procedure, $param);
    }
    function check_disqualification($ath_id) {
      $stored_procedure ="uspWEBflagDisq(?)";
        $param = array(
            $ath_id,
            
        );
        return DBhelper::sp_SelectWithParams($stored_procedure, $param);
    }
    
    function getPendingPenalties() {
        $stored_procedure ="uspALLPenalties";
        return DBhelper::sp_SelectStatement($stored_procedure);
    }
    
    function UpdatePenalty($auth_id, $start_date, $end_date) {
        $stored_procedure ="uspUpdatePenalty(?,?,?)";
         $param = array(
            $auth_id,
            $start_date,
            $end_date
            
        );
        return DBhelper::sp_NonQueryStatementsParams($stored_procedure, $param);
    }
    function getDesqualified() {
        $stored_procedure ="uspGetDisqualifiedRacers";
        return DBhelper::sp_SelectStatement($stored_procedure);
    }
    
    function addArrivalTimestamp($athlete_id, $time) {
        
        $stored_procedure ="uspArrivalTime(?,?)";
         $param = array(
          $athlete_id, 
             $time    
        );
        return DBhelper::sp_NonQueryStatementsParams($stored_procedure, $param);
    }
    
    function addDepatureTimeStamp($athlete_id, $time) {
        $stored_procedure ="uspDepartureTime(?,?)";
         $param = array(
          $athlete_id, 
             $time    
        );
        return DBhelper::sp_NonQueryStatementsParams($stored_procedure, $param);
    }
    function getAdministered() {
        $stored_procedure ="uspAdministered";
        return DBhelper::sp_SelectStatement($stored_procedure);
    }
    
    function pdf_administered() {
         $stored_procedure ="";
        return DBhelper::sp_SelectStatement($stored_procedure);
    }
    
    function pdf_disqualified() {
         $stored_procedure ="";
        return DBhelper::sp_SelectStatement($stored_procedure);
    }
    
    function pdf_un_administered() {
         $stored_procedure ="uspWEBPDFUnadministered";
        return DBhelper::sp_SelectStatement($stored_procedure);
    }
    
    function pdf_rider_history() {
         $stored_procedure ="";
        return DBhelper::sp_SelectStatement($stored_procedure);
    }
}
