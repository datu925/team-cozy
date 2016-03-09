$(document).ready(function() {
  $("#new-review").on("submit", "form", function(event) {
    event.preventDefault();
    var $form = $(this);
    var url = $form.attr("action")

    $.ajax({
      type: "POST",
      url: url,
      data: $form.serialize()
    }).done(function(response) {
      var title = response.title
      var content = response.content
      $form.trigger("reset");
      var div = "<div> <p>"+title+"</p><p>"+content+"</p></div>"
      $(div).appendTo("#movie-reviews");
    });
  });
});
