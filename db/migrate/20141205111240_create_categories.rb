class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :macrocategorie, index: true
      t.string :nome

      t.timestamps
    end
  end
end
