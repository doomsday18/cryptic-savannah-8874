class CreateModulo1s < ActiveRecord::Migration
  def change
    create_table :modulo1s do |t|
      t.string :nome_progetto
      t.string :istituzione_riferimento_progetto
      t.string :istituzioni_coinvolte_progetto
      t.text :settore_scientifico_progetto
      t.text :obiettivi_progetto
      t.datetime :data_inizio_progetto
      t.datetime :data_fine_progetto
      t.text :url_progetto
      t.text :background_razionale
      t.text :assiomi_background
      t.text :domande_background
      t.text :ipotesi_background
      t.text :note_background
      t.string :tipologia_organizzazione
      t.string :altro_organizzazione
      t.string :campo_studio_applicazione_organizzazione
      t.string :nazione_organizzazione
      t.string :regione_organizzazione
      t.string :provincia_organizzazione
      t.string :indirizzo_organizzazione
      t.string :tel_organizzazione
      t.string :email_organizzazione
      t.string :persona_di_riferimento_organizzazione
      t.string :coordinatore_relatore_team
      t.text :url_organizzazione
      t.string :titolare_rilevatore_team
      t.text :elenco_nominale_operatori_tecnici_team
      t.references :user, index: true
      t.string :responsabile_riferimento_rnt
      t.boolean :Approvato
      t.string :macrocat_sett_scient
      t.string :cat_sett_scient
      t.string :microcatt_sett_scient
      t.integer :macrocategorie_id
      t.integer :categorie_id
      t.integer :microcategorie_id

      t.timestamps
    end
  end
end
