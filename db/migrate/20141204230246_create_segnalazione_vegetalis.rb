class CreateSegnalazioneVegetalis < ActiveRecord::Migration
  def change
    create_table :segnalazione_vegetalis do |t|
      t.string :Titolo
      t.string :famiglia_macro
      t.string :genere_macro
      t.boolean :foto
      t.string :famiglia_micro
      t.string :genere_micro
      t.boolean :microfoto
      t.boolean :campione
      t.references :user, index: true

      t.timestamps
    end
  end
end
