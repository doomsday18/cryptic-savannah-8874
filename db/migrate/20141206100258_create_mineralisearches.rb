class CreateMineralisearches < ActiveRecord::Migration
  def change
    create_table :mineralisearches do |t|
      t.string :keywords
      t.string :keywords1
      t.string :keywords2

      t.timestamps
    end
  end
end
