class CreateVariabilis < ActiveRecord::Migration
  def change
    create_table :variabilis do |t|
      t.string :nome
      t.string :variabile_misurata
      t.string :variabile_derivata
      t.string :conteggio
      t.string :stima
      t.string :scala
      t.string :dimensione
      t.text :note
      t.string :variabile_chimico
      t.string :variabile_fisica
      t.text :tipo_attrezzatura
      t.text :errore_strumentale
      t.text :tipo_misurazione
      t.text :taratura
      t.text :metodologia_rilevamento
      t.text :metodologia_raccolta
      t.text :metodologia_trasporto
      t.text :metodologia_conservazione
      t.text :metodologia_laboratorio
      t.text :procedure
      t.string :aree
      t.string :comunita
      t.string :popolazioni
      t.string :individui
      t.string :numero_campionamento
      t.string :dimensione_campionamento
      t.string :disposizione_campionamento
      t.string :forma_campionamento
      t.text :note_campionamento
      t.string :numero_transetti
      t.string :forma_transetti
      t.string :inizio_transetti
      t.string :fine_transetti
      t.string :dislivello_transetti
      t.string :orientamento_transetti
      t.text :note_transetti
      t.references :modulo2, index: true

      t.timestamps
    end
  end
end
