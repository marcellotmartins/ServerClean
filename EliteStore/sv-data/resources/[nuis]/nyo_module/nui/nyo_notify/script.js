function showNotify(title, content, color, delay, icon){
    var cssNotify = '#b1b1b1';
    if(color != undefined){
        cssNotify = color;
    }

    var nIcon = "fa-exclamation";
    if(icon != undefined){
        nIcon = icon;
    }

    var html =`
    <div class="containerNotify" style="border: 2px dashed ${cssNotify}88">
        <div class="contentNotify">   
            <div class="notify-icon centerNotify" style="background-color: ${cssNotify}50">
                <i class="fas ${nIcon} fa-2x" style="filter:drop-shadow(1px 1px 1px #000000);"></i>
            </div>         
            <div class="textNotify">
                <b>${title}</b>:<br>
                ${content}
            </div>
        </div>         
    </div>`;
                $(html).appendTo("notify").hide().fadeIn(1000).delay(delay).fadeOut(1000);
                setTimeout(function(){ $('#notifyNotify').remove() }, (delay+2000));
}
