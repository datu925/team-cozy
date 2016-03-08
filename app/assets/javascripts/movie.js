$(function() {
  $(".rating").on("ajax:success", function(e, data, status, xhr) {
    $(this).trigger("reset");
    $(this).next().html("<span>Rating saved!</span>")
  })

  $(".rating").on("ajax:error", function(e, data, status, xhr) {
    $(this).next().html("<span>Rating not saved.</span>");
  })
})