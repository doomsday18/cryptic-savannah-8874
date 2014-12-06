class CreateRiferimentiSpazialis < ActiveRecord::Migration
  def change
    create_table :riferimenti_spazialis do |t|
      t.string :punti
      t.string :coordinate
      t.string :ev_descrizione
      t.text :descrizione_globale
      t.references :modulo2, index: true

      t.timestamps
    end
  end
end
