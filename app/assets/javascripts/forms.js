$(document).ready ->
  $("#attendee-list").on("ajax:success", (e, data, status, xhr) ->
    $("#attendee-list").append xhr.responseText;
    $(".attend").hide();
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#attendee-list").append "<p class='errors'>An error has occurred.</p>"