/* Important to know this is a thread and you shouldn't mess around 
 * with stuff in here
 * 
 */

//importScripts('../vendor/jquery/Ajax/jsonp.js'); 
//importScripts('../vendor/jquery/Ajax/load.js'); 
//importScripts('../vendor/jquery/Ajax/location.js'); 
//importScripts('../vendor/jquery/Ajax/nonce.js'); 
//importScripts('../vendor/jquery/Ajax/parseXML.js'); 
//importScripts('../vendor/jquery/Ajax/rquery.js'); 
//importScripts('../vendor/jquery/Ajax/rsingleTag.js'); 
//importScripts('../vendor/jquery/Ajax/script.js'); 
//importScripts('../vendor/jquery/Ajax/xhr.js'); 
//importScripts('../vendor/jquery/Ajax/amd.js');
//importScripts('../vendor/jquery/Ajax/jquery.js');
//importScripts('../vendor/jquery/Ajax/ajax.js');


onmessage = function(e){
    
    var data;
    var timestamp = e.data[1];
    var athlete_id = e.data[2];
    var arrived = e.data[0];
    if (arrived===true) {
        var xhr = new XMLHttpRequest();
        xhr.open('GET', "http://localhost/Ironman/index.php?action=arrive_time&ath_id="+athlete_id+"&time_arrived="+timestamp, true);
        xhr.send(null);


    }else{
      var xhr = new XMLHttpRequest();
        xhr.open('GET', "http://localhost/Ironman/index.php?action=departure_time&ath_id="+athlete_id+"&time_left="+timestamp, true);
        xhr.send(null);
    }
    
    
//    $.ajax({ // jQuery Ajax
//		type: 'POST',
//		url: 'index.php', // URL to the PHP file which will insert new value in the database
//		data: data, // We send the data string
//		dataType: 'json', // Json format
//		timeout: 120000,
//		success: function(data) {
//                    console.log("Succesfully ran Ajax Request");
//		},
//		error: function(error , status) {
//                    console.log("Failed to run Ajax Request");
//		}
//});


};


