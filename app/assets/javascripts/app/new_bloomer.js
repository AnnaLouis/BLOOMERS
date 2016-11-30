$(document).ready(function() {
  $(".nb-global-step").on("click", function(e){
    // Change active tab
    $(".nb-global-step").removeClass("active");
    $(".circle").removeClass("active");
    $(this).addClass("active");
    $(this).children().addClass("active");
    // Hide all tab-content (use class="hidden")
    $(".sub-new-bloomer-content").addClass("hidden");
    // Show target tab-content (use class="hidden")
    tabSelector = $(this).data("target");
    $(tabSelector).removeClass("hidden");
  });

  // STEP 1 TO STEP 2
  $("#nb-next-button-1").on("click", function(e){
    $(".nb-global-step").removeClass("active");
    $(".circle").removeClass("active");
    $("#circle-2").addClass("active");
    $(".sub-new-bloomer-content").addClass("hidden");
    $("#step-2-description").removeClass("hidden");
  });

  // STEP 2 TO STEP 3
  $("#nb-next-button-2").on("click", function(e){
    $(".nb-global-step").removeClass("active");
    $(".circle").removeClass("active");
    $("#circle-3").addClass("active");
    $(".sub-new-bloomer-content").addClass("hidden");
    $("#step-3-infos").removeClass("hidden");
  });

  // STEP 3 TO STEP 4
  $("#nb-next-button-3").on("click", function(e){
    $(".nb-global-step").removeClass("active");
    $(".circle").removeClass("active");
    $("#circle-4").addClass("active");
    $(".sub-new-bloomer-content").addClass("hidden");
    $("#step-4-medias").removeClass("hidden");
  });
});
