class RiferimentiSpaziali < ActiveRecord::Base
  belongs_to :modulo2

  attr_accessible :punti,:coordinate,:ev_descrizione,:descrizione_globale,:modulo2_id
end
