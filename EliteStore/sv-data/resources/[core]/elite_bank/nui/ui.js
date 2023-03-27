// "use strict";

let extract = $(`.ContentE`)
let imgc = $(`.sc-person-flex`)
window.addEventListener("message", event => {
    let ScDev = event.data;
    if (ScDev.nuisend == 'closed') {
        $('body').fadeOut();
        setTimeout(() => {
            extract.find(`.sc-bank-log`).empty();
            extract.find(`.sc-log-box`).empty();
        }, 200)
    }
    if (ScDev.nuisend == 'opened') {
        $('body').fadeIn('fast');
        $('body').css('background-color', 'rgba(0, 0, 0, 0.35)')

        // extracts();
        _post('refresh')

        Withdraw()
        if (ScDev.pedhash) {
            imgc.find(`#img`).html(`<img src="./img/${ScDev.pedhash}.png" class="sc-perfil">`)
        }

        makePost()
    }
});

const makePost = () => {
    $.post(`http://elite_bank/requestInitial`, JSON.stringify({}), (data) => {
        $('.namecardloop').html(data.ident);
        $('#age strong').html(data.age);
        $('#rg strong').html(data.rg);
        $('#id strong').html(data.user);
        $('.sc-job').html(data.job);
        $('#wallet').html(` <p id="wallet">Dinheiro: <strong>${addCommas(data.money)}R$</strong></p>`);
        $('#multas strong').html(`R$ ${addCommas(data.multas)}`);
        $('.sc-saldo-card').html(`R$ ${addCommas(data.bank)}`);
    });
}


$('.transfer').click(function () {
    $('.sc-button-nav').removeClass('active');
    $(this).addClass('active');
    $('.sc-action').html(`
            <p>Transferir <input type="" number="" placeholder="Id" id="transfer" class="transferput"></p>
            <input id="value"  placeholder="R$ 0,00" inputmode="numeric" type="number" class="test">
            <br>
            <button class="sc-confirm">Confirmar</button>
            <button id="sc-saque" type="disabled">Sacar $1000</button>
    `)
    $('.sc-confirm').click(function (e) {
        _post(`TransferId`, { qtd: $('.test').val(), number: $('.transferput').val() });
    })
});

$('.withdraw').click(function () {
    $('.sc-button-nav').removeClass('active');
    $(this).addClass('active');
    $('.sc-action').html(`
            <p>Sacar</p>
            <input id="value"  placeholder="R$ 0,00" inputmode="numeric" type="number" class="test">
            <br>
            <button class="sc-confirm">Confirmar</button>
            <button id="sc-saque">Sacar $1000</button>
           
    `)

    $('.sc-action #sc-saque').click(function () {
        _post('walletExpress')
    })
    $('.sc-confirm').click(function (e) {
        _post(`WalletId`, { qtd: $('.test').val() });
    })

});
function Withdraw() {
    $('.sc-button-nav').removeClass('active');
    $(this).addClass('active');
    $('.sc-action').html(`
            <p>Sacar</p>
            <input id="value"  placeholder="R$ 0,00" inputmode="numeric" type="number" class="test">
            <br>
            <button class="sc-confirm">Confirmar</button>
            <button id="sc-saque">Sacar $1000</button>
           
    `)

    $('.sc-action #sc-saque').click(function () {
        _post('walletExpress')
    })
    $('.sc-confirm').click(function (e) {
        _post(`WalletId`, { qtd: $('.test').val() });
    })
}
$('.deposit').click(function () {
    $('.sc-button-nav').removeClass('active');
    $(this).addClass('active');
    $('.sc-action').html(`
            <p>Depositar</p>
            <input id="value"  placeholder="R$ 0,00" inputmode="numeric" type="number" class="test">
            <br>
            <button class="sc-confirm">Confirmar</button>
            <button id="sc-saque" type="disabled">Sacar $1000</button>
    `)
    $('.sc-confirm').click(function (e) {
        _post(`Deposit`, { qtd: $('.test').val() });
    })
});

$('.fines').click(function () {
    $('.sc-button-nav').removeClass('active');
    $(this).addClass('active');
    $('.sc-action').html(`
            <p>Deseja pagar todas as Multas?</p>
            <br>
            <button class="sc-confirm">Confirmar</button>
            <button id="sc-saque">Pagar $1000</button>
    `)
    $('.sc-confirm').click(function (e) {
        _post(`Fines`);
    })

    $('#sc-saque').click(function (e) {
        _post(`FinesFast`);
    })
});

let extracts = () => {
    extract.find(`.sc-log-box`).fadeIn();
    extract.find(`.sc-bank-log`).fadeIn();
    _post(`Extract`, {}, e => {
        setTimeout(() => {
            let data = JSON.parse(e);
            if (data.length <= 0) {
                extract.find(`.sc-log-box`).html(`<p>Nenhum registro foi encontrado</p>`);
                extract.find(`.sc-log-box`).fadeIn('fast');
                return;
            }
            data.forEach(i => {
                extract.find('.sc-bank-log').append(`
                <div class="sc-log-box" >
                    <p>${i.title}</p> <strong> -${addCommas(i.amount)}R$</strong>
                </div>
                 `)
            })
            extract.find(`.sc-log-box`).fadeIn('fast');
        }, 200);
    });
}
document.onkeyup = function (data) {
    if (data.which == 27) {
        _post('closed')
    }
}
let _post = function (event, data, cb) {
    $.post(`http://elite_bank/${event}`, JSON.stringify((data === undefined) ? {} : data), (cb === undefined) ? () => { } : cb);
}


function addCommas(nStr) {
    nStr += '';
    var x = nStr.split('.');
    var x1 = x[0];
    var x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + '.<span style="margin-left: 0px; margin-right: 1px;"/>' + '$2');
    }
    return x1 + x2;
}
