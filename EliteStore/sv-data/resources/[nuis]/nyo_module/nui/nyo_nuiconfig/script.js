$('#color-inputNuiConfig').on('change', function () {
    $(this).next;
});


var colorPick = document.getElementById("color-inputNuiConfig")

function hexToRgb(hex) {
    var result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
    return result ? {
      r: parseInt(result[1], 16),
      g: parseInt(result[2], 16),
      b: parseInt(result[3], 16)
    } : null;
  }

colorPick.addEventListener("input", function() {
   // var colorConvert = hexToRgb(colorPick.value);
    $("#containerNuiConfig").css("--aug-border-bg", "linear-gradient(54.76deg, "+colorPick.value+" 5.23%, "+colorPick.value+" 5.24%, rgba(233, 53, 79, 0) 127.36%)");
    $('.titleAfterNuiConfig').css("background-image","linear-gradient(to left, #ff000000, "+colorPick.value+", #ff000000 )");
    $('#pseudo-color-inputNuiConfig').css('background-color', colorPick.value);
    //$(".title::after").css("background-image", "linear-gradient(to left, #ff000000, "+colorPick.value+", #ff000000 )")
}, false); 


function confirmNuiConfig(){
    sendData('NuiConfigColorChange', colorPick.value);
}

function closeNuiConfig(){
    $('#actionmenuNuiConfig').fadeOut(1);
    sendData('ButtonClick2','exit');
} 