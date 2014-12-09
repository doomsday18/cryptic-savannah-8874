class Nazione < ActiveRecord::Base
has_many :regiones

accepts_nested_attributes_for :regiones
attr_accessible :nome, :regiones_attributes

end
