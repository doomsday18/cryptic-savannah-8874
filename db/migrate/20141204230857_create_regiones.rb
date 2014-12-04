class CreateRegiones < ActiveRecord::Migration
  def change
    create_table :regiones do |t|
      t.string :nome
      t.references :nazione, index: true

      t.timestamps
    end
  end
end
