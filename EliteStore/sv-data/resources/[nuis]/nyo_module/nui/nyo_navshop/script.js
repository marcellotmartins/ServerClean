var shopType = 'sell';
var navConfig;
function setNavShopNui(config){
    navConfig = config;
    $(".listagemNavShop").html('');
    var shopIndex = 1;

    for (const [key, value] of Object.entries(config)) {
        if(value.type == shopType){
            shopButton = ''
            if(shopType == 'buy'){
                shopButton = 'Comprar';
            }else{
                shopButton = 'Vender';
            }

            valueType = '';
            if(value.typeMoney == 'ilegal'){
                valueType = '(SUJO)';
            }
            $(".listagemNavShop").append(`
            <div class="itemNav">
                <div class="overlay" onClick="navShopAction(${shopIndex}, '${value.index}')">${shopButton}</div>
                <img src="${imgItem}${value.index}.png" width="120" height="120">
                <div class="item-info">
                    <span>${value.name}</span><br>
                    <small>R$ ${value.price}${valueType}</small>
                </div>
            </div>
            `);
        }
        shopIndex++;
    }

    $('.itemNav').mouseenter(function(){
        $(this).addClass("active");
    });

    $('.itemNav').mouseleave(function(){
        $(this).removeClass("active");
    });

    
}

function navShopMenu(t){
    shopType = t;
    $(".itemMenu").removeClass("active");
    if(shopType == 'buy'){
        $("#menuBuy").addClass("active");
        $(".tituloNavShop").html("<b>Compras</b>");
    }else{
        $("#menuSell").addClass("active");
        $(".tituloNavShop").html("<b>Vendas</b>");
    }
    setNavShopNui(navConfig);
}


function navShopAction(index, item){
    var arr = {'index': index, 'item': item};
    sendData('navShopNuiAction', arr);
}