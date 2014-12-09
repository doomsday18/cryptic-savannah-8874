class Team < ActiveRecord::Base
  belongs_to :modulo2

  attr_accessible :nome, :cognome, :ruolo, :istituzione, :indirizzo, :email, :tel, :cell, :modulo2_id
end
