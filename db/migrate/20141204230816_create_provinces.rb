class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :nome
      t.references :regione, index: true

      t.timestamps
    end
  end
end
