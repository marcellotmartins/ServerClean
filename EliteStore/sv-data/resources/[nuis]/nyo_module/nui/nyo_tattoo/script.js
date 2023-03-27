function setTattooShopE() {
    $('.listagemTattooShop').html('');
    $('#searchTattooShop').val('');   
    var tattooShop;

    if(sexo == 'M'){
        tattooShop = lojaDados['partsM'];
    }else if(sexo == 'F'){
        tattooShop = lojaDados['partsF'];
    }

    if (tattooShop[dataPartE]){
        for (var i = 0; i <= (tattooShop[dataPartE].tattoo.length - 1); i++) {
            
            let partName = tattooShop[dataPartE].tattoo[i].name; 
            let dlcName = tattooShop[dataPartE].tattoo[i].part; 
            let customname = tattooShop[dataPartE].tattoo[i].cname;
            let price = tattooShop[dataPartE].tattoo[i].price;
                $(".listagemTattooShop").append(`
                <div class="item itemPTattooShop" data-partname="${partName}" data-id="${i}" data-sexo="${sexo}" data-parttype="${dataPartE}" 
                    style="background-image: url(${imgTattooShop}${dataPartE}/${dlcName}/${partName}.jpg); background-size: 100%;" onclick="selectTattooShopItem(this)" id="${dataPartE}${i}">
                    <active></active>
                    <small><b>${i}</b></small>
                    <span>R$ ${price}</span>
                </div> 
                `);

            if(oldPart[partName]){
                selectTattooShopSelect(i);
            }
        }
    }
}

function selectTattooShopSelect(i){
    if($(`#${dataPartE}${i}`).hasClass('activeTattooShop')){
        $(`#${dataPartE}${i}`).removeClass('activeTattooShop');
        $(`#${dataPartE}${i} active`).html('');
    }else{
        $(`#${dataPartE}${i}`).addClass('activeTattooShop'); 
        $(`#${dataPartE}${i} active`).html('<i class="far fa-check-circle"></i>');
    }
}

function selectTattooPart(element) {    
    let dataPart = element.dataset.idpart;
    let menu = element.dataset.idmenu;
    if(menu == 'E' && dataPart != 'reset'){
        $('.flexTattooShop aside .categoryTattooShop').removeClass('activeMTattooShop');
        $(element).addClass('activeMTattooShop');
        $('#searchTattooShop').val('');

        dataPartE = dataPart;        
    }else{
        oldPart = [];
        sendData('limpaTattoo', {});
    }

    setTattooShopE();
}

function searchTattooShop(type){
    var value = $('#searchTattooShop').val();
    var el = $('.itemPTattooShop');

    $.each(el, function(e, e2) {
        let dataId = e2.dataset.id
        if (dataId.indexOf(value) > -1) {
            $(e2).css("display","inline-flex");
        }else{
            $(e2).css("display","none");
        }
   });
}

function selectTattooShopItem(element){
    partId = element.dataset.id;
    partName = element.dataset.partname;
    partType = element.dataset.parttype;
    partSexo = element.dataset.sexo;

    if(oldPart[partName]){
        oldPart[partName] = null;
    }else{
        oldPart[partName] = true;
    }
    
    if($(element).hasClass('activeTattooShop')){
        $(element).removeClass('activeTattooShop');
        $(element).find("active").html('');
    }else{
        $(element).addClass('activeTattooShop'); 
        $(element).find("active").html('<i class="far fa-check-circle"></i>');
    }


    var arr = {'part': partType, 'itemId': partId, 'partName': partName, 'sexo': partSexo};
    sendData('changeTattooShopItem', arr);
}


function paymentTattooShop(){
    sendData('ButtonClick','payment');
}

function closeTattooShopUI(){
    $('#actionmenuTattooShop').fadeOut(1);
    sendData('ButtonClick','exit');
}
