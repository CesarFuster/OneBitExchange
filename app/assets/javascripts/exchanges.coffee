$(document).ready ->

  $('form').submit ->
    if $('form').attr('action') == '/exchange'
      $.ajax '/exchange',
          type: 'GET'
          dataType: 'json'
          data: {
                  source_currency: $("#currency").val(),
                  target_currency_destination: $("#currency_destination").val(),
                  amount: $("#quantity").val()
                }
          error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
          success: (data, text, jqXHR) ->
            $('#result').val(data.value)
        return false;
