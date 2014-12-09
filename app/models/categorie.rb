class Categorie < ActiveRecord::Base
  belongs_to :macrocategorie,class_name: 'Macrocategorie'
    
has_many :modulo1s
  has_many :microcategories,class_name: 'Microcategorie'

  accepts_nested_attributes_for :microcategories
  
  attr_accessible :nome, :macrocategorie_id, :microcategories_attributes
end
