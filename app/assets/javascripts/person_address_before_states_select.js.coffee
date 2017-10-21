jQuery ->
  states = $('#select2-state').html()
  $('#select2-country').change ->
    country = $('#select2-country :selected').text()
    options = $(states).filter("optgroup[label='#{country}']").html()
    if options
      $('#select2-state').html(options)
    else
      $('#select2-state').empty()
