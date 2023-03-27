function setGuardaRoupaE(drawna) {
    $('.listagemGuardaRoupaEsquerda').html('');
    $('.listaCorGuardaRoupaE').html('');

    if(dataPartE == 'p2' || dataPartE == 'p6'|| dataPartE == 'p7'){                    
        $(".listagemGuardaRoupaEsquerda").append(`
            <div class="fundoItemGuardaRoupa comTresGuardaRoupa GuardaRoupaMenuE" data-id="E${i}" onclick="selectGuardaRoupaItem('E', -1, true, true, 0)" id="">
                <div class="itemGuardaRoupa" style="background: url('http://26.104.3.179/roupas/${dataPartE}/${sexo}/0_0.png'); background-size: 100% 100%; background-position: center;">
                </div>
                <div class="valorGuardaRoupa itemGuardaRoupaMenuEsquerda">0</div>
                <div class="idGuardaRoupa itemGuardaRoupaMenuEsquerda">-1</div>
            </div>
        `);
    }

    if(dataPartE != 'outfit'){
        var lData = lojaDados['clouth'][dataPartE];
        for (var i = 0; i <= (drawna -1); i++) {   
            var exibeItem = false;
            if (lData){
                if(lData[i]){                    
                    exibeItem = true;
                }
            }
            if(exibeItem){
                $(".listagemGuardaRoupaEsquerda").append(`
                <div class="fundoItemGuardaRoupa comTresGuardaRoupa GuardaRoupaMenuE" data-id="E${i}" onclick="selectGuardaRoupaItem('E', ${i}, true, true, 0)" id="E${dataPartE}${i}">
                    <div class="itemGuardaRoupa" style="background: url('http://26.104.3.179/roupas/${dataPartE}/${sexo}/${i}_0.png'); background-size: 100% 100%; background-position: center;">
                    </div>
                    <div class="valorGuardaRoupa itemGuardaRoupaMenuEsquerda">0</div>
                    <div class="idGuardaRoupa itemGuardaRoupaMenuEsquerda">${i}</div>
                </div>
                `);
                if (oldPart[dataPartE][0] == i) {
                    selectGuardaRoupaItem('E', i, true, false, oldPart[dataPartE][1]);
                }  
            } 
        }
    }
    
 
}

function setGuardaRoupaD(drawna) {    
    $('.listagemGuardaRoupaDireita').html('');
    $('.listaCorGuardaRoupaD').html('');

    if(dataPartD == 'p2' || dataPartD == 'p6'|| dataPartD == 'p7'){                    
        $(".listagemGuardaRoupaDireita").append(`
            <div class="fundoItemGuardaRoupa comTresGuardaRoupa GuardaRoupaMenuD" data-id="D${i}" onclick="selectGuardaRoupaItem('D', -1, true, true, 0)" id="">
                <div class="itemGuardaRoupa" style="background: url('http://26.104.3.179/roupas/${dataPartD}/${sexo}/0_0.png'); background-size: 100% 100%; background-position: center;">
                </div>
                <div class="valorGuardaRoupa itemGuardaRoupaMenuDireita">0</div>
                <div class="idGuardaRoupa itemGuardaRoupaMenuDireita">-1</div>
            </div>
        `);
    }

    if(dataPartD != 'outfit'){
        var lData = lojaDados['clouth'][dataPartD];
        for (var i = 0; i <= (drawna -1); i++) {   
            var exibeItem = false;
            if (lData){
                if(lData[i]){                    
                    exibeItem = true;
                }
            }
            if(exibeItem){
                $(".listagemGuardaRoupaDireita").append(`
                <div class="fundoItemGuardaRoupa comTresGuardaRoupa GuardaRoupaMenuD" data-id="D${i}" onclick="selectGuardaRoupaItem('D', ${i}, true, true, 0)" id="D${dataPartD}${i}">
                    <div class="itemGuardaRoupa" style="background: url('http://26.104.3.179/roupas/${dataPartD}/${sexo}/${i}_0.png'); background-size: 100% 100%; background-position: center;">
                    </div>
                    <div class="valorGuardaRoupa itemGuardaRoupaMenuDireita">0</div>
                    <div class="idGuardaRoupa itemGuardaRoupaMenuDireita">${i}</div>
                </div>
                `);
                if (oldPart[dataPartD][0] == i) {
                    selectGuardaRoupaItem('D', i, true, false, oldPart[dataPartD][1]);
                }   
            } 
        }
    }else{
        var lData = lojaDados['outfit'];       
        $(".listagemGuardaRoupaDireita").append(`
        <div id="salvarOutfitGuardaRoupa">
            <h4>SALVAR NOVO OUTFIT</h4>
            <div id="salvando">
                <input type="text" placeholder="Nome" id="inputOutfit" class="inputSalvarGuardaRoupa">
                <div class="salvarGuardaRoupa" onClick="salvarOutfit()">SALVAR</div>
            </div>
        </div>
        <h4>OUTFITS EXISTENTES</h4>`);

        for (const [key, value] of Object.entries(lData)) {
            $(".listagemGuardaRoupaDireita").append(`
            <div class="outfitsGuardaRoupa GuardaRoupaMenuD" data-id="D${key}">
                    <div class="nomeOutfitGuardaRoupa">${key}</div>
                    <div class="botoesDivGuardaRoupa">
                        <div class="botaoOutGuardaRoupaUsar" id="usarOutfit" onClick="usarOutfit('${key}')">USAR</div>
                        <div class="botaoOutGuardaRoupaExcluir" id="excluirOutfit" onClick="excluirOutfit('${key}')">EXCLUIR</div>
                    </div>
                </div>`);
        }
    }
}

function setGuardaRoupaColorE(drawna, roupaId){
    $('.listaCorGuardaRoupaE').html('');
    let itemMax = drawna - 1; 
    for (var i = 0; i <= itemMax; i++) {             
        $(".listaCorGuardaRoupaE").append(`
            <div class="fundoItemGuardaRoupa corItemGuardaRoupa" data-id="EC${roupaId}${i}" onclick="selectGuardaRoupaItem('E', ${roupaId}, false, true, ${i})" id="EC${dataPartE}${roupaId}${i}">
                <div class="itemGuardaRoupa" style="background: url('http://26.104.3.179/roupas/${dataPartE}/${sexo}/${roupaId}_${i}.png'); background-size: 100% 100%; background-position: center;">
                </div>
                <div class="idGuardaRoupa id_corGuardaRoupa itemGuardaRoupaCorEsquerda">${i}</div>
            </div>
        `);
        if (oldPart[dataPartE][1] == i) {
            selectGuardaRoupaColorItem('E', roupaId, i);
        }
    };     
}

function setGuardaRoupaColorD(drawna, roupaId){
    $('.listaCorGuardaRoupaD').html('');
    let itemMax = drawna - 1; 
    for (var i = 0; i <= itemMax; i++) {             
        $(".listaCorGuardaRoupaD").append(`
        <div class="fundoItemGuardaRoupa corItemGuardaRoupa" data-id="DC${roupaId}${i}" onclick="selectGuardaRoupaItem('D', ${roupaId}, false, true, ${i})" id="DC${dataPartD}${roupaId}${i}">
            <div class="itemGuardaRoupa" style="background: url('http://26.104.3.179/roupas/${dataPartD}/${sexo}/${roupaId}_${i}.png'); background-size: 100% 100%; background-position: center;">
            </div>
            <div class="idGuardaRoupa id_corGuardaRoupa itemGuardaRoupaCorDireita">${i}</div>
        </div>
        `);
        if (oldPart[dataPartD][1] == i) {
            selectGuardaRoupaColorItem('D', roupaId, i);
        }
    };     
}


function selectGuardaPart(element) {    
    let dataPart = element.dataset.idpart;
    let menu = element.dataset.idmenu;
    let titulo = element.dataset.titulo;
    if(menu == 'E'){
        $('.menuGuardaRoupaE').removeClass('selecionadoGuardaRoupa');
        $(element).addClass('selecionadoGuardaRoupa');
        $('.listaCorGuardaRoupaE').html('');
        $('#GuardaRoupaTituloEsquerdo').html(titulo);
    }else if(menu == 'D'){
        $('.menuGuardaRoupaD').removeClass('selecionadoGuardaRoupa');
        $(element).addClass('selecionadoGuardaRoupa');
        $('.listaCorGuardaRoupaD').html('');
        $('#GuardaRoupaTituloDireito').html(titulo);
    }

    var arr = {'part': dataPart, 'menu': menu};
    sendData('changeGuardaRoupaPart', arr);
}

function searchGuardaRoupa(type){
     if(type == 'E'){
        var value = $('#searchGuardaRoupaE').val();
        var el = $('.GuardaRoupaMenuE');
    }else if(type == 'D'){
        var value = $('#searchGuardaRoupaD').val();
        var el = $('.GuardaRoupaMenuD');
    }

    $.each(el, function(e, e2) {
        let dataId = e2.dataset.id;
        if (dataId.indexOf(value) > -1) {
            $(e2).css("display","block");
        }else{
            $(e2).css("display","none");
        }
   });
}

function selectGuardaRoupaColorItem(menu, i, color){
    if(menu == 'E'){
        $('.itemGuardaRoupaCorEsquerda').removeClass('selecionadoGuardaRoupa');
        $('#EC'+dataPartE+i+color).find('.itemGuardaRoupaCorEsquerda').addClass('selecionadoGuardaRoupa');
        ndPart = dataPartE
    }else if(menu == 'D'){
        $('.itemGuardaRoupaCorDireita').removeClass('selecionadoGuardaRoupa');
        $('#DC'+dataPartD+i+color).find('.itemGuardaRoupaCorDireita').addClass('selecionadoGuardaRoupa');
        ndPart = dataPartD
    }

    oldPart[ndPart][1] = color;
}

function selectGuardaRoupaItem(menu, i, menuChange, change, color){
   // Aqui vai selecionar o item e setar as cores
   if (menu == 'E'){
    $('.itemGuardaRoupaMenuEsquerda').removeClass('selecionadoGuardaRoupa');        
    $('.itemGuardaRoupaCorEsquerda').removeClass('selecionadoGuardaRoupa'); 
    $('#E'+dataPartE+i).find('.valorGuardaRoupa').addClass('selecionadoGuardaRoupa');
    $('#E'+dataPartE+i).find('.idGuardaRoupa').addClass('selecionadoGuardaRoupa');   
    $('#EC'+dataPartE+i+color).find('.itemGuardaRoupaCorEsquerda').addClass('selecionadoGuardaRoupa');
    ndPart = dataPartE;
   }else if(menu == 'D'){
    $('.itemGuardaRoupaMenuDireita').removeClass('selecionadoGuardaRoupa');
    $('.itemGuardaRoupaCorDireita').removeClass('selecionadoGuardaRoupa');
    $('#D'+dataPartD+i).find('.valorGuardaRoupa').addClass('selecionadoGuardaRoupa');
    $('#D'+dataPartD+i).find('.idGuardaRoupa').addClass('selecionadoGuardaRoupa');
    $('#DC'+dataPartD+i+color).find('.itemGuardaRoupaCorDireita').addClass('selecionadoGuardaRoupa');
    ndPart = dataPartD;
   }

   oldPart[ndPart][0] = i;
   oldPart[ndPart][1] = color;

   var arr = {'part': ndPart, 'itemId': i, 'menu': menu, 'menuChange': menuChange, 'change': change, 'color': color};
   sendData('changeGuardaRoupaMenuColor', arr);
}

function usarOutfit(k){
    sendData('guardaRoupaUsarOutfit', k);
}

function excluirOutfit(k){
    sendData('guardaRoupaExcluirOutfit', k);
}

function salvarOutfit(){
    var name = $('#inputOutfit').val();
    if(name != ''){
        sendData('salvarOutfit', name)
    }
}

function paymentGuardaRoupa(){
    sendData('ButtonClick','payment');
}

function closeGuardaRoupaUI(){
    $('#actionmenuGuardaRoupa').fadeOut(1);
    sendData('ButtonClick','exit');
}