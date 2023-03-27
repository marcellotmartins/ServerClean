function setElevadorButtons(locs, eName){
    $("mainElevador menu section").html('');

      if(eName != undefined){
        $(".elevadorName").html(eName);
      }else{
        $(".elevadorName").html("ELEVADOR");
      }
      for (i = 0; i < locs.length; i++){          
        var newI = i +1;

        if(locs[i].name != undefined){
            andarName = locs[i].name;
        }else{
            andarName = `Andar ${newI}`;
        }

        $("mainElevador menu section").append(`
        <div class="item" onCLick="elevadorMove(${newI})">
                    <span>${andarName}</span>
        </div>`);
    }
    setNuiColor('elevador'); 
}

function elevadorMove(i){
    sendData('elevadorMove', i);
}