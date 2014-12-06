class CreateOrganismis < ActiveRecord::Migration
  def change
    create_table :organismis do |t|
      t.string :genere
      t.string :specie
      t.text :riferimento
      t.string :famiglia
      t.string :ordine
      t.text :note
      t.text :referenze
      t.text :descrizione
      t.references :modulo2, index: true

      t.timestamps
    end
  end
end
