class Organismi < ActiveRecord::Base
  belongs_to :modulo2

  attr_accessible :genere, :specie, :riferimento, :famiglia, :ordine, :note,:referenze, :descrizione, :modulo2_id
end
