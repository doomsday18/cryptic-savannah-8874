class Microcategorie < ActiveRecord::Base
  belongs_to :categorie,class_name: 'Categorie'

  has_many :modulo1s
  
  attr_accessible :nome, :categorie_id
end
