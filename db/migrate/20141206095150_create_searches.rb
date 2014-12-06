class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :keywords1
      t.string :keywords2

      t.timestamps
    end
  end
end
