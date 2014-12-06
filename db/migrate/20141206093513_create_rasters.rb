class CreateRasters < ActiveRecord::Migration
  def change
    create_table :rasters do |t|
      t.text :descrizione
      t.references :modulo2, index: true

      t.timestamps
    end
  end
end
