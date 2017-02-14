
$(document).ready(function() {
  // navbar transition jQuery script
  $(window).scroll(function(e){
    if ($(this).scrollTop() > 0) {
      $(".pages-home .navbar-bloomer").css({
        "background-color": "white"
      });
      $("#logo-navbar").css({
        "display": "block"
      });
      $('.pages-home .navbar-bloomer').css({"box-shadow": "1px 1px 1px #F0F0F0"});
      $('.pages-home .navbar-bloomer-link').css({"color" : "#616668"})
    }
    else {
      $(".pages-home .navbar-bloomer").css({
        "background-color": "transparent"
      });
      $("#logo-navbar").css({
        "display": "none"
      });
      $('.pages-home .navbar-bloomer').css({"box-shadow": "none"});
      $('.pages-home .navbar-bloomer-link').css({"color" : "#FABF01"})
    }
  });
});
