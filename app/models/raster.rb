class Raster < ActiveRecord::Base
  belongs_to :modulo2

  attr_accessible :descrizione, :modulo2_id
end
