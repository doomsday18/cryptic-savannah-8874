json.array!(@modulo2s) do |modulo2|
  json.extract! modulo2, :sottoprogetti, :difficoltà, :suggerimenti, :note, :condizioni_iniziali, :processi_in_atto, :storia, :team_id, :variabili_id, :organismi_numero, :organismi_tipologia, :sistemi_biologici_id, :disegno_sperimentale, :metodo_campionamento, :descrizione_campioni, :variabili_ambientali, :altre_variabili, :raster_id, :materializzazione, :altro, :riferimenti_spaziali_id, :transetti_id, :aree_id, :plots_id, :descrizione_percorso, :numero_di_ingressi, :punto_di_ingresso, :data_inizio, :data_fine, :copertura_temporale, :abstract, :citazioni_bibliografiche, :citazioni_abstract, :documenti_files, :localizzazione_documenti, :referente, :proprietario_autore, :materiale_consegnato, :bibliografia_moduli1e2, :modulo1_id, :user_id
  json.url modulo2_url(modulo2, format: :json)
end
