class SistemiBiologici < ActiveRecord::Base
  belongs_to :modulo2

  attr_accessible :tipologia, :riferimento,:componenti, :note,:referenze,:descrizione,:modulo2_id
end
