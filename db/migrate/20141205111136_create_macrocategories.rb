class CreateMacrocategories < ActiveRecord::Migration
  def change
    create_table :macrocategories do |t|
      t.string :nome

      t.timestamps
    end
  end
end
