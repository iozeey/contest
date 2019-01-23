# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# alert 'dsfd'


$(document).ready ->
  $('.entry_form').submit ->
    console.log 'somethign'
    valuesToSubmit = $(this).serialize()
    $.ajax(
      type: 'POST'
      url: $(this).attr('action')
      data: valuesToSubmit
      dataType: 'JSON')
      .done (json) ->
        console.log 'success', json
        toastr.success json.notice, "Success"

      .fail (json) ->
        toastr.error json.responseText, "Error"

      false
    false
