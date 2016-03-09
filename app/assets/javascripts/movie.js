$(function() {

  $(".rating-scale").on("click","a", function(e) {
    e.preventDefault();
    var value = $(this).index() + 1;
    var form = $(this).closest("form");
    var isUpdate = form.find(".rating-scale .marked").length;
    var method;
    if (isUpdate) {
      method = "put"
    } else {
      method = "post"
    }
    $.ajax({
      method: method,
      url: form.attr("action"),
      data: form.serialize() + "&rating[value]=" + value
    })
    .done(function(details) {
      form.trigger('reset');
      form.find(".rating-messages").text("Rating saved!");
      form.find(".rating-scale i").removeClass("marked");
      form.find(".rating-scale a:nth-child(" + details.new_rating + ") i").addClass("marked");
      form.closest(".ratable").find(".avg-rating").text(details.avg_rating + "%");
    })
    .error(function(response) {
      form.find(".rating-messages").replaceWith("<div class='rating-message'>You must <a href='/login'>login</a> or <a href='/register'>register</a> to vote!</div>");
    });
  });

})
