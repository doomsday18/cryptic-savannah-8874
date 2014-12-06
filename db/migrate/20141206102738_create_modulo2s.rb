class CreateModulo2s < ActiveRecord::Migration
  def change
    create_table :modulo2s do |t|
      t.text :sottoprogetti
      t.text :difficolta
      t.text :suggerimenti
      t.text :note
      t.text :condizioni_iniziali
      t.text :processi_in_atto
      t.text :storia
      t.references :team, index: true
      t.references :variabili, index: true
      t.integer :organismi_numero
      t.string :organismi_tipologia
      t.references :sistemi_biologici, index: true
      t.text :disegno_sperimentale
      t.text :metodo_campionamento
      t.text :descrizione_campioni
      t.text :variabili_ambientali
      t.text :altre_variabili
      t.references :raster, index: true
      t.text :materializzazione
      t.text :altro
      t.references :riferimenti_spaziali, index: true
      t.references :transetti, index: true
      t.references :aree, index: true
      t.references :plots, index: true
      t.text :descrizione_percorso
      t.integer :numero_di_ingressi
      t.text :punto_di_ingresso
      t.datetime :data_inizio
      t.datetime :data_fine
      t.text :copertura_temporale
      t.text :abstract
      t.text :citazioni_bibliografiche
      t.text :citazioni_abstract
      t.text :documenti_files
      t.text :localizzazione_documenti
      t.string :referente
      t.string :proprietario_autore
      t.text :materiale_consegnato
      t.text :bibliografia_moduli1e2
      t.references :modulo1, index: true
      t.references :user, index: true
      t.integer :modulo1_id
      t.string :compilatore
      t.text :ElencoVariabili
      t.text :descrizione_riferimenti_spaziali
      t.string :titolo_modulo1

      t.timestamps
    end
  end
end
