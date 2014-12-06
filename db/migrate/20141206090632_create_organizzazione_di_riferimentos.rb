class CreateOrganizzazioneDiRiferimentos < ActiveRecord::Migration
  def change
    create_table :organizzazione_di_riferimentos do |t|
      t.string :nome
      t.references :nazione, index: true
      t.references :regione, index: true
      t.references :provincia, index: true
      t.string :indirizzo
      t.string :referente
      t.string :email
      t.string :tel
      t.string :cell
      t.references :modulo2, index: true

      t.timestamps
    end
  end
end
