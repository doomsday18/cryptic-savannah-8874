class CreateVegetalisearches < ActiveRecord::Migration
  def change
    create_table :vegetalisearches do |t|
      t.string :keywords
      t.string :keywords1
      t.string :keywords2
      t.string :keywords3
      t.string :keywords4

      t.timestamps
    end
  end
end
