class Modulo2 < ActiveRecord::Base
  belongs_to :team
  belongs_to :variabili
  belongs_to :sistemi_biologici
  belongs_to :raster
  belongs_to :riferimenti_spaziali
  belongs_to :transetti
  belongs_to :aree
  belongs_to :plots
  belongs_to :modulo1
  belongs_to :user
end
