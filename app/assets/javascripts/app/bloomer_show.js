$(document).ready(function() {
  function getHashParams() {

    var hashParams = {};
    var e,
        a = /\+/g,  // Regex for replacing addition symbol with a space
        r = /([^&;=]+)=?([^&;]*)/g,
        d = function (s) { return decodeURIComponent(s.replace(a, " ")); },
        q = window.location.hash.substring(1);

    while (e = r.exec(q))
       hashParams[d(e[1])] = d(e[2]);

    return hashParams;
  }

  $(".sub-title").on("click", function(e){
      // Change active tab
      $(".sub-title").removeClass("active");
      $(this).addClass("active");
      // Hide all tab-content (use class="hidden")
      $(".sub-content").addClass("hidden");
      // Show target tab-content (use class="hidden")
      tabSelector = $(this).data("target");
      $(tabSelector).removeClass("hidden");

      window.location.hash = '#tab=' + tabSelector.replace('#', '');
    });


    $(".program-title").on("click", function(e){
      // Change active tab
      $(".program-title").removeClass("active");
      $(this).addClass("active");
      // Hide all tab-content (use class="hidden")
      $(".program-content").addClass("hidden");
      // Show target tab-content (use class="hidden")
      tabSelector = $(this).data("target");
      $(tabSelector).removeClass("hidden");
    });


    var url_params = getHashParams()
    var current_tab = '#' + url_params.tab;
    console.log(current_tab)
    $('.sub-title[data-target="' + current_tab + '"]').click();

});

