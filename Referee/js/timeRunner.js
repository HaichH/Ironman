/* Important to know this is a thread and you shouldn't mess around 
 * with stuff in here
 * 
 */


onmessage = function(e){
    
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
};


