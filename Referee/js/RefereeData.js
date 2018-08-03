/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$('document').ready(function() {
    
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
                    document.getElementbyId('ds_all_pen').innerHTML= data.AllPenalties; // We update the vendors DIV with the article list
                    document.getElementbyId('tent_a').innerHTML = data.TentOne;
                    document.getElementbyId('tent_b').innerHTML = data.TentTwo;
                    document.getElementbyId('disq').innerHTML = data.RedCards;
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


function StartTimer(a,x) {
    var name = a;
    var start_time = new Date();
    var x = parseInt(x);
    ;
    if(x>0) {
        
        $('#'+name).html("Time Left:"+ x);
        name = name;
        //document.getElementbyId(name).innerHTML= "Time Left:"+ x;
        // will call itself until x=0
        setTimeout(function(){ StartTimer(name, x-1);}, 1000);
    } else if(x==0) {
         var end_time = new Date();
        // no timer needed to be cleaned up
      // TimeStampAthlete(name, start_time,end_time);
       var data = {action:'update_penalty', ath_id:name, start_time: start_time, end_time: end_time}; // Create JSON which will be sent via Ajax	
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
                    document.getElementById('dataTable').innerHTML = data.pending_people;
		},
		error: function(error , status) {
                   // window.alert("Error"+error+"Status"+status);
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
                    document.getElementById('delPeople').innerHTML = data.disq_people;
		},
		error: function(error , status) {
                   // window.alert("Error"+error+"Status"+status);
		}
});
}
//Keep Data RUNNING 
setTimeout(function(){  
    getPendingPenalties();
    updateOverview();
    getDisPeople();
}, 60000);


