class Regione < ActiveRecord::Base
  belongs_to :nazione

  has_many :provinces

  accepts_nested_attributes_for :provinces
attr_accessible :nome, :province_attributes, :nazione_id
end
