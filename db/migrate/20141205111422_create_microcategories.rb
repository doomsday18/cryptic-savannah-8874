class CreateMicrocategories < ActiveRecord::Migration
  def change
    create_table :microcategories do |t|
      t.references :categorie, index: true
      t.string :nome

      t.timestamps
    end
  end
end
