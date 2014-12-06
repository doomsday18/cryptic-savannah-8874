class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.references :modulo1, index: true
      t.references :modulo2, index: true
      t.references :segnalazione_animali, index: true
      t.references :segnalazione_vegetali, index: true
      t.references :segnalazione_minerali, index: true

      t.timestamps
    end
  end
end
