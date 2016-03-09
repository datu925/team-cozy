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
    .done(function(updated_rating) {
      form.trigger('reset');
      form.find(".rating-messages").text("Rating saved!")
      form.closest(".ratable").find(".avg-rating").text(updated_rating);
    })
    .error(function(response) {
      form.find(".rating-messages").text("Rating not saved.");
    });
  });

})