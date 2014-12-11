json.array!(@segnalazione_animalis) do |segnalazione_animali|
  json.extract! segnalazione_animali, :classe, :epiteto, :genere, :specie, :autore, :foto, :user_id
  json.url segnalazione_animali_url(segnalazione_animali, format: :json)
end
