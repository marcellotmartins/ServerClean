async function setSkinShopE(drawna) {
    $('.listagemSkinShop').html('');
    $('.listaCorSkinShop').html('');
    $('#searchSkinShop').val('');
    var priceG = lojaDados[dataPartE]['price']

    if(dataPartE == 'p2' || dataPartE == 'p6'|| dataPartE == 'p7'){                    
        $(".listagemSkinShop").append(`
            <div class="item itemPSkinShop" data-id="E${i}" onclick="selectSkinShopItem('E', -1, true, true, 0)" id="">
                <img src="${imgSkinShop}${dataPartE}/${sexo}/0_0.png">
                <small><b>Remover</b></small>
                <span>R$ ${priceG}</span>
            </div>
        `);
    }
    
    
    for (var i = 0; i <= (drawna -1); i++) {   
        var exibeItem = false;
        if(lojaType == 'all'){
            exibeItem = true;
        }else if(lojaType == 'exclusive'){
            if(inArray(i, lojaDados[dataPartE]['item'][sexo])){
                exibeItem = true;
            }
        }else if(lojaType == 'exclude'){
            if(!inArray(i, lojaDados[dataPartE]['item'][sexo])){
                exibeItem = true;
            }
        }

        if(exibeItem){
            $(".listagemSkinShop").append(`
            <div class="item itemPSkinShop" data-id="E${i}" onclick="selectSkinShopItem('E', ${i}, true, true, 0)" id="E${dataPartE}${i}"
            style="background-image: url(${imgSkinShop}${dataPartE}/${sexo}/${i}_0.jpg), url('${imgSkinShop}${dataPartE}/${sexo}/${i}_0.png'); background-size: 100%;">
                <active></active>
                <small>${i}</small>
                <span>R$ ${priceG}</span>
            </div>
            `);
            if (oldPart[dataPartE][0] == i) {
                selectSkinShopItem('E', i, true, false, oldPart[dataPartE][1]);
            }  
        } 
    }
}

function setSkinShopColorE(drawna, roupaId){
    $('.listaCorSkinShop').html('');
    let itemMax = drawna - 1; 
    for (var i = 0; i <= itemMax; i++) {             
        $(".listaCorSkinShop").append(`
            <div class="item flex-centerSkinShop corItemSkinShop" data-id="EC${roupaId}${i}" onclick="selectSkinShopItem('E', ${roupaId}, false, true, ${i})" id="EC${dataPartE}${roupaId}${i}"
            style="background-image: url(${imgSkinShop}${dataPartE}/${sexo}/${roupaId}_${i}.jpg); background-size: 100%;">
                <small><b>${i}</b></small>
            </div>   
        `);

        if (oldPart[dataPartE][1] == i) {
            selectSkinShopColorItem('E', roupaId, i);
        }
    };     
}

function selectShopPart(element) {    
    let dataPart = element.dataset.idpart;
    let menu = element.dataset.idmenu;
    let titulo = element.dataset.titulo;
    $('.flexSkinShop aside .categorySkinShop').removeClass('activeMSkinShop');
    $(element).addClass('activeMSkinShop');
    $('#searchSkinShop').val('');

    var arr = {'part': dataPart, 'menu': menu};
    sendData('changeSkinShopPart', arr);
}

function searchSkinShop(){
    var value = $('#searchSkinShop').val();
    var el = $('.itemPSkinShop');

    $.each(el, function(e, e2) {
        let dataId = e2.dataset.id;
        if (dataId.indexOf(value) > -1) {
            $(e2).css("display","inline-flex");
        }else{
            $(e2).css("display","none");
        }
   });
}

function selectSkinShopColorItem(menu, i, color){
    $('#EC'+dataPartE+i+color).addClass('activeSkinShop');
    ndPart = dataPartE
    oldPart[ndPart][1] = color;
}

function selectSkinShopItem(menu, i, menuChange, change, color){
   // Aqui vai selecionar o item e setar as cores
   // $(".itemPSkinShop").removeClass("activeSkinShop");
   // $(".corItemSkinShop").removeClass("activeSkinShop");
   // $('#E'+dataPartE+i).addClass("activeSkinShop");
   // $('#EC'+dataPartE+i+color).addClass('activeSkinShop');
   $('active').html('');
   $('#E'+dataPartE+i+' active').html('<i class="far fa-check-circle"></i>'); 
   ndPart = dataPartE;

   oldPart[ndPart][0] = i;
   oldPart[ndPart][1] = color;

   var arr = {'part': ndPart, 'itemId': i, 'menu': menu, 'menuChange': menuChange, 'change': change, 'color': color};
   sendData('changeSkinShopMenuColor', arr);
}

function paymentSkinShop(){
    sendData('ButtonClick','payment');
}

function closeSkinShopUI(){
    $('#actionmenuSkinShop').fadeOut(1);
    sendData('ButtonClick','exit');
}