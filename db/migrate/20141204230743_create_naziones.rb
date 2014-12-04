class CreateNaziones < ActiveRecord::Migration
  def change
    create_table :naziones do |t|
      t.string :nome

      t.timestamps
    end
  end
end
