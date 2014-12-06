class CreateModulo1searches < ActiveRecord::Migration
  def change
    create_table :modulo1searches do |t|
      t.string :keywords
      t.string :keywords1
      t.string :keywords2
      t.string :keywords3
      t.string :keywords4
      t.string :keywords5
      t.integer :macrocategory_id
      t.integer :category_id
      t.integer :microcategory_id

      t.timestamps
    end
  end
end
