var sexoCloak = "M";

function loadCloakRoom(data){
    for (var i=0; i<$('.itemCloak').length; i++) {
        $(".owl-carousel").trigger('remove.owl.carousel',[i]).trigger('refresh.owl.carousel');
    }

    if(data['config']['permRetirar']){
         $('.owl-carousel').trigger('add.owl.carousel', [`
         <div class="itemCloak">
            <img src="${imgCloakRoom}/retirar.png">
            <div class="info">
            <small>conjunto</small>
            <h3>Retirar Roupa</h3>
            <button onClick="useClothes(-1)">RETIRAR</button>
            </div>
        </div>`]).trigger('refresh.owl.carousel');
    }

    sexoCloak = data['sexo'];
    var dataCloak = data['config']['pressets'][sexoCloak];
    for(var i=0; i<dataCloak.length;i++){        
        $('.owl-carousel').trigger('add.owl.carousel', [`
            <div class="itemCloak">
                <img src="${imgCloakRoom}/${dataCloak[i]['img']}.png">
                <div class="info">
                <small>conjunto</small>
                <h3>${dataCloak[i]['name']}</h3>
                <button onClick="useClothes(${i})">Vestir</button>
                </div>
            </div>`]).trigger('refresh.owl.carousel');
    }

    $('#actionMenuCloakRoom').fadeIn(1);   
}

function useClothes(i, clothe){
    var arr = {'id': i, 'sexo': sexoCloak};
    sendData('changeClothe', arr);
}