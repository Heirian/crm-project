jQuery ->
  $('#select2-state').parent().hide()
  states = $('#select2-state').html()
  $('#select2-country').change ->
    country = $('#select2-country :selected').text()
    options = $(states).filter("optgroup[label='#{country}']").html()
    if options
      $('#select2-state').html(options)
      $('#select2-state').parent().show()
    else
      $('#select2-state').empty()
      $('#select2-state').parent().hide()
