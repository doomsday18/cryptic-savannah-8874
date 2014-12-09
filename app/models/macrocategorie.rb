class Macrocategorie < ActiveRecord::Base
	has_many :categories,class_name: 'Categorie'
    has_many :modulo1s
    accepts_nested_attributes_for :categories
    
   attr_accessible :nome, :categories_attributes
end
