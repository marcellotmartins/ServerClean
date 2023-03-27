var pStart = false;
function startProgressBarAc(titulo, time){
    
    if(pStart == false){
        pStart = true;
        $("#acaoProgressBar").html(titulo);
        $(".progressBarPorcent").html('0%');
        $(".time2ProgressBar").html("00:00:00");
        
        $("#containerPaiProgressBar").show();
        var start = new Date();
        var maxTime = time;
        var timeoutVal = Math.floor(maxTime/100);
        animateUpdate();

        function updateProgress(percentage) {
            $(".progressBarPorcent").html('Progress em: '+percentage+'%');
            $('progressBar .bar .fill').css("width", percentage+"%");
        }

        function startTime(nTime) {
            var newTime = parseInt((time - nTime)/1000)+1;

            var h = '00';
            var m = '00';
            var s = '00';

            
            m = parseInt(newTime / 60);
            s = parseInt(newTime % 60);       

            if(m > 60){
                h = parseInt(m / 60);
                m = parseInt(m % 60);            
            }

            if(s < 10){
                s = "0"+s;
            }

            if(m < 10){
                m = "0"+m;
            }

            $(".time2ProgressBar").html(h+":"+m+":"+s);
        }

        function animateUpdate() {
            var now = new Date();
            var timeDiff = now.getTime() - start.getTime();
            var perc = Math.round((timeDiff/maxTime)*100);
            startTime(timeDiff);
            if (perc <= 100) {
                updateProgress(perc);
                setTimeout(animateUpdate, timeoutVal);
            } else {
                $("#containerPaiProgressBar").hide();
                pStart = false;
            }
        }
    }
    

}   