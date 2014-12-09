class Province < ActiveRecord::Base
  belongs_to :regiones

  attr_accessible :nome, :regione_id
end
