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

});






