class CreateModulo2searches < ActiveRecord::Migration
  def change
    create_table :modulo2searches do |t|
      t.string :keywords
      t.string :keywords1
      t.string :keywords2
      t.string :keywords3
      t.string :keywords4
      t.string :keywords5
      t.integer :modulo1_id

      t.timestamps
    end
  end
end
