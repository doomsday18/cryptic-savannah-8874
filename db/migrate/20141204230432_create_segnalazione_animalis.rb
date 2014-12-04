class CreateSegnalazioneAnimalis < ActiveRecord::Migration
  def change
    create_table :segnalazione_animalis do |t|
      t.string :Titolo
      t.string :classe
      t.string :epiteto
      t.string :genere
      t.string :specie
      t.string :autore
      t.boolean :foto
      t.references :user, index: true

      t.timestamps
    end
  end
end
