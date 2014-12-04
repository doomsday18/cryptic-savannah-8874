class CreateSegnalazioneMineralis < ActiveRecord::Migration
  def change
    create_table :segnalazione_mineralis do |t|
      t.string :titolo
      t.text :note
      t.references :user, index: true

      t.timestamps
    end
  end
end
