json.array!(@modulo1s) do |modulo1|
  json.extract! modulo1, :nome_progetto, :istituzione_riferimento_progetto, :istituzioni_coinvolte_progetto, :settore_scientifico_progetto, :obiettivi_progetto, :data_inizio_progetto, :data_fine_progetto, :url_progetto, :background_razionale, :assiomi_background, :domande_background, :ipotesi_background, :note_background, :tipologia_organizzazione, :altro_organizzazione, :campo_studio_applicazione_organizzazione, :nazione_organizzazione, :regione_organizzazione, :provincia_organizzazione, :indirizzo_organizzazione, :tel_organizzazione, :email_organizzazione, :persona_di_riferimento_organizzazione, :url_organizzazione, :coordinatore_relatore_team, :titolare_rilevatore_team, :elenco_nominale_operatori_tecnici_team
  json.url modulo1_url(modulo1, format: :json)
end
