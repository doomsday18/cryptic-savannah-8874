json.array!(@segnalazione_vegetalis) do |segnalazione_vegetali|
  json.extract! segnalazione_vegetali, :famiglia_macro, :genere_macro, :foto, :famiglia_micro, :genere_micro, :microfoto, :campione, :user_id
  json.url segnalazione_vegetali_url(segnalazione_vegetali, format: :json)
end
