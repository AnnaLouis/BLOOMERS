
$(document).ready(function() {
  // navbar transition jQuery script
  $(window).scroll(function(e){
    if ($(this).scrollTop() > 0) {
      $(".pages-home .navbar-bloomer").css({
        "background-color": "white"
      });
    }
    else {
      $(".pages-home .navbar-bloomer").css({
        "background-color": "transparent"
      });
    }
  });
});
