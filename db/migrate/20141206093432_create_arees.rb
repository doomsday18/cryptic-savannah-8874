class CreateArees < ActiveRecord::Migration
  def change
    create_table :arees do |t|
      t.string :nome
      t.text :localizzazione
      t.text :ev_descrizione
      t.references :modulo2, index: true

      t.timestamps
    end
  end
end
