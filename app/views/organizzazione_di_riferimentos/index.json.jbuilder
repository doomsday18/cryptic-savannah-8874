json.array!(@organizzazione_di_riferimentos) do |organizzazione_di_riferimento|
  json.extract! organizzazione_di_riferimento, :nome, :nazione_id, :regione_id, :provincia_id, :indirizzo, :referente, :email, :tel, :cell, :url, :modulo2_id
  json.url organizzazione_di_riferimento_url(organizzazione_di_riferimento, format: :json)
end
