jQuery ->
  cities = $('#select2-city').html()
  $('#select2-country').change ->
    state = $('#select2-state :selected').text()
    options = $(cities).filter("optgroup[label='#{state}']").html()
    if options
      $('#select2-city').html(options)
    else
      $('#select2-city').empty()
  $('#select2-state').change ->
    state = $('#select2-state :selected').text()
    options = $(cities).filter("optgroup[label='#{state}']").html()
    if options
      $('#select2-city').html(options)
    else
      $('#select2-city').empty()
