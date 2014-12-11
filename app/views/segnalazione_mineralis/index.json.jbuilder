json.array!(@segnalazione_mineralis) do |segnalazione_minerali|
  json.extract! segnalazione_minerali, :titolo, :note, :user_id
  json.url segnalazione_minerali_url(segnalazione_minerali, format: :json)
end
