$(document).ready(function() {
  $(".sub-title").on("click", function(e){
      // Change active tab
      $(".sub-title").removeClass("active");
      $(this).addClass("active");
      // Hide all tab-content (use class="hidden")
      $(".sub-content").addClass("hidden");
      // Show target tab-content (use class="hidden")
      tabSelector = $(this).data("target");
      $(tabSelector).removeClass("hidden");
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
});

