const app = {
  appVars: {
    descOpen: false,
  },
  open: () => {
    $('body').show();
  },
  close: () => {
    $('body').hide();
  },
  buyVeh: () => {
    // Post
  },
  sellVeh: () => {
    // Post
  },
  descStatus: () => {
    if (!app.appVars.descOpen) {

      $('.icon-desc').addClass('active');
      $('.info-column').css('filter', 'blur(5px)');
      $('.desc-column').animate({ "left": "10px" }, "slow" );

      app.appVars.descOpen = true
    } else {
      $('.icon-desc').removeClass('active');
      $('.info-column').css('filter', 'blur(0px)');
      $('.desc-column').animate({ "left": "300px" }, "slow" );

      app.appVars.descOpen = false
    }
  }
}