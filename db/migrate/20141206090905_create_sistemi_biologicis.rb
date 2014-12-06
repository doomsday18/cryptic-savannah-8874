class CreateSistemiBiologicis < ActiveRecord::Migration
  def change
    create_table :sistemi_biologicis do |t|
      t.text :tipologia
      t.text :riferimento
      t.text :componenti
      t.text :note
      t.text :referenze
      t.text :descrizione
      t.references :modulo2, index: true

      t.timestamps
    end
  end
end
