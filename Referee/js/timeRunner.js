/* Important to know this is a thread and no DOM stuff are allowed in here, URL's need to be declared from scratch
 * 
 * 
 */


onmessage = function(e){
    
    var timestamp = e.data[1];
    var athlete_id = e.data[2];
    var arrived = e.data[0];
    if (arrived===true) {
        var xhr = new XMLHttpRequest();
        var datetime = new Date();
        xhr.open('GET', "http://localhost/Ironman/index.php?action=arrive_time&ath_id="+athlete_id+"&time_arrived="+datetime, true);
        xhr.send(null);


    }else{
      var xhr = new XMLHttpRequest();
      var datetime = new Date();
        xhr.open('GET', "http://localhost/Ironman/index.php?action=departure_time&ath_id="+athlete_id+"&time_left="+datetime, true);
        xhr.send(null);
    }
};


