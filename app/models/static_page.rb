class StaticPage < ActiveRecord::Base
  belongs_to :modulo1
  belongs_to :modulo2
  belongs_to :segnalazione_animali
  belongs_to :segnalazione_vegetali
  belongs_to :segnalazione_minerali
end
