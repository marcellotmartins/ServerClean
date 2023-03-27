var mostrandoColorBarberShopE = 0;
var mostrandoColorBarberShopD = 0;
var colorListBarberShop = ["#1C1F21", "#272A2C", "#312E2C", "#35261C", "#4B321F", "#5C3B24", "#6D4C35", "#6B503B", "#765C45", "#7F684E",
    "#99815D", "#A79369", "#AF9C70", "#BBA063", "#D6B97B", "#DAC38E", "#9F7F59", "#845039", "#682B1F", "#61120C", "#640F0A",
    "#7C140F", "#A02E19", "#B64B28", "#A2502F", "#AA4E2B", "#626262", "#808080", "#AAAAAA", "#C5C5C5", "#463955", "#5A3F6B",
    "#763C76", "#ED74E3", "#EB4B93", "#F299BC", "#04959E", "#025F86", "#023974", "#3FA16A", "#217C61", "#185C55", "#B6C034",
    "#70A90B", "#439D13", "#DCB857", "#E5B103", "#E69102", "#F28831", "#FB8057", "#E28B58", "#D1593C", "#CE3120", "#AD0903",
    "#880302", "#1F1814", "#291F19", "#2E221B", "#37291E", "#2E2218", "#231B15", "#020202", "#706C66", "#9D7A50"];

function setBarberShop(drawna, texture, opacityOld) {
    $('.listagemBarberShop').html('');
    $('#searchBarberShop').val('');
    
    var sexoB = '';

    if(sexo == 'M'){
        sexoB = 'Male';
    }else if(sexo == 'F'){
        sexoB = 'Female';
    }
    
    var corPrim = false;
    var corSec = false;
    var opacity = false;
    $("#corBarberShop").html('');

    if(dataPartE == 0 || dataPartE == 1 || dataPartE == 2 ||dataPartE == 3 || dataPartE == 4 || dataPartE == 5 || dataPartE == 6 || dataPartE == 7 || dataPartE == 8 || dataPartE == 9 || dataPartE == 10 ){
        opacity = true;
    }

    if(dataPartE == 1 || dataPartE == 2 || dataPartE == 5 || dataPartE == 8){
        corPrim = true;
    }else if(dataPartE == 12){
        corPrim = true; 
        corSec = true;               
    }else{

        // if(!opacity){            
        //     $('#corEsquerdoBarberShop').slideUp(200);
        //     mostrandoColorBarberShopE = 0;
        // }
    }

    if(corPrim || corSec || opacity){
        if(corPrim){
            $("#corBarberShop").append(`<div class="colunaBarberShop">
                                            <span>Cores 1</span>
                                            <div class="coluna-contentBarberShop colorList1">`);
            for (var i in colorListBarberShop) {
                $(".colorList1").append(`<div class="color" style="background: ${colorListBarberShop[i]};" onClick="changeBarberShopColor(${i},'1')"></div>`);            
            }                                            
            $("#corBarberShop").append(`</div></div>`);
        }

        if(corSec){
            $("#corBarberShop").append(`<div class="colunaBarberShop">
                                            <span>Cores 2</span>
                                            <div class="coluna-contentBarberShop colorList2">`);
            for (var i in colorListBarberShop) {
                $(".colorList2").append(`<div class="color" style="background: ${colorListBarberShop[i]};" onClick="changeBarberShopColor(${i},'2')"></div>`);            
            }                                            
            $("#corBarberShop").append(`</div></div>`);
        }

        if(opacity){
            $("#corBarberShop").append(`
            <div class="colunaBarberShop">
                <div class="coluna-opacityBarberShop">
                    <span>opacidade</span>
                    <input class="opacityBShop" type="range" style="margin: 0;"  oninput="barberShopOpacityChange(this)" value="${opacityOld}" step="0.01" min="0.01" max="0.99">
                </div>
            </div>`);

            var min = 0.01,
            max = 0.99,
            val = opacityOld;
        
            $(".opacityBShop").css({
                'backgroundSize': (val - min) * 100 / (max - min) + '% 100%'
            });
        }
    }

    for (var i = 0; i <= (drawna -1); i++) {   
        var exibeItem = false;
        if(lojaType == 'all'){
            exibeItem = true;
        }else if(lojaType == 'exclusive'){
            if(inArray(i, lojaDados[dataPartE]['item'][sexoB])){
                exibeItem = true;
            }
        }else if(lojaType == 'exclude'){
            if(!inArray(i, lojaDados[dataPartE]['item'][sexoB])){
                exibeItem = true;
            }
        }



        if(exibeItem){
            $(".listagemBarberShop").append(`
            <div class="item itemPBarberShop" data-id="E${i}" onclick="selectBarberShopItem('E', ${i})" id="E${dataPartE}${i}"
                 style="background-image: url(${imgBarberShop}${dataPartE}/${sexo}/${i}.jpg); background-size: 100%;">
                <active></active>
                <small><b>1${i}</b></small>
                <span>R$ ${lojaDados[dataPartE]['price']}</span>
            </div>            
            `);
            if (oldPart[dataPartE][0] == i) {
                selectBarberShopItem('E', i);
            }  
        } 
    }
}

function selectBarberPart(element) {    
    let dataPart = element.dataset.idpart;
    let menu = element.dataset.idmenu;
    let titulo = element.dataset.titulo;
    $('.flexBarberShop aside .categoryBarberShop').removeClass('activeMBarberShop');
    $(element).addClass('activeMBarberShop');
    $('#searchBarberShop').val('');

    var arr = {'part': dataPart, 'menu': menu};
    sendData('changeBarberShopPart', arr);
}

function searchBarberShop(){
    var value = $('#searchBarberShop').val();
    var el = $('.itemPBarberShop');

    $.each(el, function(e, e2) {
        let dataId = e2.dataset.id
        if (dataId.indexOf(value) > -1) {
            $(e2).css("display","inline-flex");
        }else{
            $(e2).css("display","none");
        }
   });
}

function changeBarberShopColor(i, type){
    ndPart = dataPartE; 
    var arr = {'part': ndPart, 'color': i, 'type': type};
    sendData('changeBarberShopColor', arr);
}

function selectBarberShopItem(menu, i){
   // Aqui vai selecionar o item e setar as cores
    // $('.itemPBarberShop').removeClass('activeBarberShop');
    // $('#E'+dataPartE+i).addClass('activeBarberShop'); 
    $('active').html('');
    $('#E'+dataPartE+i+' active').html('<i class="far fa-check-circle"></i>'); 
    
    ndPart = dataPartE;

   oldPart[ndPart][0] = i;  

   var arr = {'part': ndPart, 'itemId': i, 'menu': menu};
   sendData('changeBarberShopItem', arr);
}

function barberShopOpacityChange (e) {
    opacity = e.value;
    
    var min = e.min,
    max = e.max,
    val = e.value;

    $(e).css({
        'backgroundSize': (val - min) * 100 / (max - min) + '% 100%'
    });

    ndPart = dataPartE;

    var arr = {'part': ndPart, 'opacity': opacity};
    sendData('changeBarberShopOpacity', arr);
}

function paymentBarberShop(){
    sendData('ButtonClick','payment');
}

function closeBarberShopUI(){
    $('#actionmenuBarberShop').fadeOut(1);
    sendData('ButtonClick','exit');
}
