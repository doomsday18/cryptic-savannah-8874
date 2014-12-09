class Aree < ActiveRecord::Base
  belongs_to :modulo2

  attr_accessible :nome,:localizzazione, :ev_descrizione, :modulo2_id
end
