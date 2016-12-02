// $(function(){
//   $(".dashboard-tab:first-child").addClass("active")
//   $(".dashboard-tab").on("click", function(e){
//     // Change active tab
//     $(".dashboard-tab").removeClass("active");
//     $(this).addClass("active");
//     // Hide all tab-content (use class="hidden")
//     $(".dashboard-tab-content").addClass("hidden");
//     // Show target tab-content (use class="hidden")
//     tabSelector = $(this).data("target");
//     $(tabSelector).removeClass("hidden");
//   });
// });


$(function(){
  $(".dashboard-tab:first-child").each(function(index) {
    $(this).addClass("active");
  });
   $(".dashboard-tab").on("click", function(e){
      if($(this).hasClass('active')) {

      } else {
        $(".dashboard-tab.active").removeClass("active");
        $(this).addClass('active');
      }
   });

});
