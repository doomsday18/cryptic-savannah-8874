class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nome
      t.string :cognome
      t.string :ruolo
      t.string :istituzione
      t.string :indirizzo
      t.string :email
      t.string :tel
      t.string :cell
      t.references :modulo2, index: true

      t.timestamps
    end
  end
end
