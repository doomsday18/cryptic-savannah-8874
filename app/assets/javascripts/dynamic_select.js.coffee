jQuery ->
  categories = $('#modulo1_categorie_id').html()
  $('#modulo1_macrocategorie_id').change ->
    macrocategorie = $('#modulo1_macrocategorie_id :selected').text()
    options = $(categories).filter("optgroup[label='#{macrocategorie}']").html()
    if options
      $('#modulo1_categorie_id').html(options)
      
    else
      $('#modulo1_categorie_id').empty()
      

  microcategories = $('#modulo1_microcategorie_id').html()
  $('#modulo1_categorie_id').change ->
    categorie = $('#modulo1_categorie_id :selected').text()
    options = $(microcategories).filter("optgroup[label='#{categorie}']").html()
    if options
      $('#modulo1_microcategorie_id').html(options)
    else
      $('#modulo1_microcategorie_id').empty()
    







