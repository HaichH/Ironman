/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$('document').ready(function() {
    //Freeze table headings
    // $('#dataTable').fixedtableheader('hide');
     // $('#delPeople').fixedtableheader('hide'); 
      
//      $('#dataTable tr').on('inview', function(event, isInView) {
//          $('dataTable').fixedHeaderTable({ altClass: 'yellow_ticket' });
//        if (isInView) {
//          // element is now visible in the viewport
//      $('#dataTable').fixedtableheader('show');
//      $('#delPeople').fixedtableheader('hide');
//        } else {
//          // element has gone out of viewport
//      $('#dataTable').fixedtableheader('hide');
//      $('#delPeople').fixedtableheader('hide');
//        }
//      }); 
//      
//       $('#delPeople').on('inview', function(event, isInView) {
//        if (isInView) {
//          // element is now visible in the viewport
//      $('#dataTable').fixedtableheader('hide');
//      $('#delPeople').fixedtableheader('show');
//        } else {
//          // element has gone out of viewport
//      $('#dataTable').fixedtableheader('hide');
//      $('#delPeople').fixedtableheader('hide');
//        }
//      });
      
      
 //help person use textbox to find athlete quicker 
$('#ath_finder').keyup(function() {
    var $rows = $('#dataTable tr');
    var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
    
    $rows.show().filter(function() {
        var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
        return !~text.indexOf(val);
    }).hide();
});

//Set button look alike values
	var data = {action:'overview_data'}; // Create JSON which will be sent via Ajax	
        $.ajax({ // jQuery Ajax
		type: 'POST',
		url: 'index.php', // URL to the PHP file which will insert new value in the database
		data: data, // We send the data string
		dataType: 'json', // Json format
		timeout: 120000,
		success: function(data) {
                    $('#ds_all_pen').html(data.AllPenalties); // We update the vendors DIV with the article list
                    $('#tent_a').html(data.TentOne);
                    $('#tent_b').html(data.TentTwo);
                    $('#disq').html(data.RedCards);
                     getPendingPenalties();
                     getDisPeople();
		},
		error: function(error , status) {
                   // window.alert("Error"+error+"Status"+status);
		}
	});
         
	return false;
        getPendingPenalties();
$(document).on('click', '#btnAdminPenalty', function(e){
    window.alert("Error"+error+"Status"+status);
    var athlete = $("#rider_no").val();
    var data = {action:'find_user_penalties', athlete:athlete}; // Create JSON which will be sent via Ajax	
        $.ajax({ // jQuery Ajax
		type: 'POST',
		url: 'index.php', // URL to the PHP file which will insert new value in the database
		data: data, // We send the data string
		dataType: 'json', // Json format
		timeout: 120000,
		success: function(data) {
                    if (data.Allow ==0) {
                    //Allow 
                    lblreason
                    $('#lblreason').html(data.Reason);
                } else if(data.Allow==1){
                    //Has to wait
                    $('#lblreason').html("Found Athlete, Added to penalty box.- start clock timer");
                    $('.penalty_box').html($(data.html_draw).insertBefore( ".line" ));
                } else if(data.Allow==2){
                   // Disqualified
                   $('#lblreason').html(data.Reason);
                }
                    
		},
		error: function(error , status) {
                    window.alert("Error"+error+"Status"+status);
		}
	});

});




});//End document.ready

function updateOverview(){
    var data = {action:'overview_data'}; // Create JSON which will be sent via Ajax	
        $.ajax({ // jQuery Ajax
		type: 'POST',
		url: 'index.php', // URL to the PHP file which will insert new value in the database
		data: data, // We send the data string
		dataType: 'json', // Json format
		timeout: 120000,
		success: function(data) {
                   // document.getElementbyId('ds_all_pen').innerHTML= data.AllPenalties; // We update the vendors DIV with the article list
                    $('#ds_all_pen').html(data.AllPenalties);
                   // document.getElementbyId('tent_a').innerHTML = data.TentOne;
                    $('#tent_a').html(data.TentOne);
                   // document.getElementbyId('tent_b').innerHTML = data.TentTwo;
                   $('#tent_b').html(data.TentTwo);
                  //  document.getElementbyId('disq').innerHTML = data.RedCards;
                    $('#disq').html(data.RedCards);
		},
		error: function(error , status) {
                   // window.alert("Error"+error+"Status"+status);
		}
});
}

function TestHaich(){
      
    var athlete = $("#rider_no").val();
    var data = {action:'find_user_penalties', athlete:athlete}; // Create JSON which will be sent via Ajax	
        $.ajax({ // jQuery Ajax
		type: 'POST',
		url: 'index.php', // URL to the PHP file which will insert new value in the database
		data: data, // We send the data string
		dataType: 'json', // Json format
		timeout: 120000,
		success: function(data) {
                    if (data.Allow ==0) {
                    //Allow 
                    lblreason
                    $('#lblreason').html(data.Reason);
                } else if(data.Allow==1){
                    //Has to wait
                    $('#lblreason').html("Found Athlete, Added to penalty box.- start clock timer");                  
                    
                    document.getElementById('penalty_box').innerHTML += data.html_draw;
                } else if(data.Allow==2){
                   // Disqualified
                   $('#lblreason').html(data.Reason);
                }
                    
		},
		error: function(error , status) {
                    window.alert("Error"+error+"Status"+status);
		}
	});
}


function StartTimer(a,x, exists) {
    var name = a;
    var x = parseInt(x);
    var entered = exists;
    if(entered===false){
        //Update Database
        var dte = new Date();
        timestampPenalty(true, dte, name);
    }
    if(x>0) {        
        $('#'+name).html(x+"s");       
        setTimeout(function(){ StartTimer(name, x-1,true);}, 1000);
    } else if(x==0) {
        //Notify Athlete to start moving again:
        var img = 'ironman.jpg';
        var text = 'Athlete'+ name+' can proceed';
        var notification = new Notification('Alert Racer', { body: text, icon: img });
        $('#'+name).html("Athlete may proceed");
         var end_time = new Date();
  //Update Database
       timestampPenalty(false, end_time, name);
    }
    
}



function TimeStampAthlete(ath_id, start_time, end_time){
    var data = {action:'update_penalty', ath_id:ath_id, start_time: start_time, end_time: end_time}; // Create JSON which will be sent via Ajax	
        $.ajax({ // jQuery Ajax
		type: 'POST',
		url: 'index.php', // URL to the PHP file which will insert new value in the database
		data: data, // We send the data string
		dataType: 'json', // Json format
		timeout: 120000,
		success: function(data) {
                     getPendingPenalties();
                     updateOverview();
		},
		error: function(error , status) {
                    window.alert("Error"+error+"Status"+status);
		}
});
}


function getPendingPenalties(){
    var data = {action:'pending_penalties'}; // Create JSON which will be sent via Ajax	
        $.ajax({ // jQuery Ajax
		type: 'POST',
		url: 'index.php', // URL to the PHP file which will insert new value in the database
		data: data, // We send the data string
		dataType: 'json', // Json format
		timeout: 120000,
		success: function(data) {
                   // document.getElementById('dataTable').innerHTML = data.pending_people;               
            for (var i = 0; i < data.length; i++) {
            var currentObject = data[i];
                var athlete_element = document.getElementById("Athlete"+ currentObject[0]+"");
                if (athlete_element!==null) {
                    //athlete  has already commited a foul - accumulate
                    var athlete_update =" <td>"+currentObject[0]+ "- "+ currentObject[2]+"</td>"+
                   " <td>"+currentObject[1]+"<span>s</span><br>Remaining:<br> <span id ="+currentObject[0]+">"+currentObject[1]+"</span></td>"+
                   " <td><div class= 'tickets blue_ticket'"+">x"+currentObject[5]+"</div>"+
                   "<div class= 'tickets yellow_ticket ' "+">x"+currentObject[4]+"</div></td> "+
                   " <td>"+currentObject[3]+"</td>" +
                   " <td><input type="+"button value=Start Timer onclick= StartTimer('"+currentObject[0]+"'"+","+currentObject[1]+","+"false"+")></td> ";
                    athlete_element.innerHTML = athlete_update;
                    
                }else{
                    //Athlete hasn't yet commited a foul - create new.
                    
                     document.getElementById("dataTable").innerHTML +=  " <tr id=" +"Athlete"+currentObject[0]+">" + 
                   " <td>"+currentObject[0]+ "- "+ currentObject[2]+"</td>"+
                   " <td>"+currentObject[1]+"<span>s</span><br>Remaining: <br><span id ="+currentObject[0]+">"+currentObject[1]+"</span></td>"+
                   " <td><div class='tickets blue_ticket'"+">x"+currentObject[5]+"</div>"+
                   "<div class='tickets yellow_ticket'"+">x"+currentObject[4]+"</div></td> "+
                   " <td>"+currentObject[3]+"</td>" +
                   " <td><input type="+"button value=Start Timer onclick= StartTimer('"+currentObject[0]+"'"+","+currentObject[1]+","+"false"+")></td> "+
                   " </tr>";
                
                }                      
            }
               document.getElementById("last_ref").innerHTML = new Date();
                
		},
		error: function(error , status) {
                    window.alert("Error"+error+"Status"+status);
		}
});
}

function getDisPeople(){
     var data = {action:'get_disq'}; // Create JSON which will be sent via Ajax	
        $.ajax({ // jQuery Ajax
		type: 'POST',
		url: 'index.php', // URL to the PHP file which will insert new value in the database
		data: data, // We send the data string
		dataType: 'json', // Json format
		timeout: 120000,
		success: function(data) {
                   // document.getElementById('delPeople').innerHTML = data.disq_people;
                   
                    for (var i = 0; i < data.length; i++) {
                            var currentObject = data[i];
                           var athlete_element = document.getElementById("disq_athlete"+ currentObject[0]+"");
                           if (athlete_element!==null) {
                               //Athlete has already been disqualified, accumulate disqualifications
                               athlete_element.innerHTML =  "<td>"+currentObject[0]+" - "+currentObject[1]+"</td>"+
                                       "<td><div class='tickets blue_ticket'"+">x"+currentObject[3]+"</div>"+
                                       " <div class='tickets red_ticket'"+">x"+currentObject[2]+"</div></td>";
                               
                           }else{
                               //Athelete has just received first disqualification
                               
                               removeDisqualifiedAthlete(""+currentObject[0]+""); //Remove athlete if started of with penalties
                              document.getElementById("delPeople").innerHTML += "<tr id=" +"disq_athlete"+currentObject[0]+">" +
                                       "<td>"+currentObject[0]+" - "+currentObject[1]+"</td>"+
                                       "<td> <div class='tickets blue_ticket'"+">x"+currentObject[3]+"</div> "+
                                       "<div class='tickets red_ticket'"+">x"+currentObject[2]+"</div> </td>"+
                                       "</tr>"; 
                           }
                        }
		},
		error: function(error , status) {
                    window.alert("Error"+error+"Status"+status);
		}
});
}
//Keep Data RUNNING 
setTimeout(function(){  
    getPendingPenalties();
    updateOverview();
    getDisPeople();
}, 60000);

function removeDisqualifiedAthlete(athlete){
    var a  = document.getElementById("Athlete"+athlete);
    if(a!==null){
        //Athlete does have pending penalties, remove entry because Athlete is disqualified
        a.remove();
    }
}

function timestampPenalty(arrived, timestamp, athlete_id){
var stampWorker = new Worker('Referee/js/timeRunner.js');
stampWorker.postMessage([arrived,timestamp,athlete_id]);
console.log("Sent Racer: "+ athlete_id+" Details of time: "+ timestamp+". Penalty Status: "+arrived);
}


//     //Make notifications to alert athletes to proceed   
//        Notification.requestPermission(function (permission) {
//      // If the user accepts, let's create a notification
//      if (permission === "granted") {
//        var notification = new Notification("Hi there! We'll appear here when Athletes should move.");
//      }
//    });
//    
//    
//
////Prevent user from refreshing the page
//window.onbeforeunload = function() {
//            return "you can not refresh the page";
//        }
