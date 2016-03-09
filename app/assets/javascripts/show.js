$(document).ready(function() {

  $("#new_comment").on("submit", function(e) {
    e.preventDefault();
    var url = $(this).attr('action');
    var data = $(this).serialize();

    var request = $.ajax({
      method: "POST",
      url: url,
      dataType: "json",
      data: data,
    });

    request.done(function(response){
      var commentDiv = "<div><p>" + response['content'] + "</p><p>Commented by " + response['user']['username'] + "</p></div>"
      $("#comment-listing").append(commentDiv);
      $('#new_comment').trigger('reset');
    });

    request.fail(function(response){
      alert(response)
    });

  });

// });

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