$(function() {

  $(".rating").on("click","a", function(e) {
    e.preventDefault();
    var value = $(this).index() + 1;
    var form = $(this).closest("form");
    $.ajax({
      method: "post",
      url: form.attr("action"),
      data: form.serialize() + "&rating[value]=" + value
    })
    .done(function(details) {
      form.trigger('reset');
      form.find(".rating-messages").text("Rating saved!");
      form.find(".rating-scale i").removeClass("marked");
      form.find(".rating-scale a:nth-child(" + details.new_rating + ") i").addClass("marked");
      form.closest(".ratable").find(".avg-rating").text(details.avg_rating);
    })
    .error(function(response) {
      form.find(".rating-messages").text("Rating not saved.");
    });
  });

})