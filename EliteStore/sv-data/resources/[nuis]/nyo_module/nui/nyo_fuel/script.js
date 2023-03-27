var fuelStatus = 0;

function setFuelData(brand, price, vfuel, type){
    fuelStatus = 0;
    $('.logoFuel').css("background-image", "url('http://26.104.3.179/posto/"+brand+".png')")
    if(type == 'eletrical'){
        $(".litrosText").html('Amperes');
        $('.litrosText2').html('Valor por amper');
    }else{
        $(".litrosText").html('Litros');
        $('.litrosText2').html('Valor por litro');
    }
    $('.inputValorFuel').html('R$'+price);
    $('.inputTotalFuel').html('');
    $('.inputLitrosFuel').html('');
    $('.progressFuel').html(parseFloat(vfuel.toFixed(2))+'%');
    $('.progressFuel').css("--aug-border-bg","linear-gradient(92.4deg, #FF9900 "+parseFloat(vfuel.toFixed(2))+"%, rgba(255, 153, 0, 0) "+parseFloat(vfuel.toFixed(2))+"%)");
}

function updateFuelData(vfuel, totalprice, totalfuel){
    $('.inputTotalFuel').html('R$'+parseFloat(totalprice.toFixed(0)));
    $('.inputLitrosFuel').html(parseFloat(totalfuel.toFixed(0)));
    $('.progressFuel').html(parseFloat(vfuel.toFixed(2))+'%');
    $('.progressFuel').css("--aug-border-bg","linear-gradient(92.4deg, #FF9900 "+parseFloat(vfuel.toFixed(2))+"%, rgba(255, 153, 0, 0) "+parseFloat(vfuel.toFixed(2))+"%)"); 
}


function iniciarAbastecimento(){
    if (fuelStatus == 0){
        fuelStatus = 1;
        sendData('fuelSet', 'start');
    }
}

function pararAbastecimento(){
    if (fuelStatus == 1){
        fuelStatus = 0;
        sendData('fuelSet', 'stop');
    }
}