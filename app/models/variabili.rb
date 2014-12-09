class Variabili < ActiveRecord::Base
  belongs_to :modulo2

  attr_accessible :nome,:variabile_misurata,:conteggio,:stima,:variabile_derivata,:scala,:dimensione,:note,
                  :variabile_chimico,:variabile_fisica,
                  :tipo_attrezzatura,:errore_strumentale,:tipo_misurazione,:taratura,
                  :metodologia_rilevamento,:metodologia_raccolta,:metodologia_trasporto,:metodologia_conservazione,:metodologia_laboratorio,
                  :procedure,
                  :aree,:comunita,:popolazioni,:individui,
                  :numero_campionamento,:forma_campionamento,:dimensione_campionamento,:disposizione_campionamento,:note_campionamento,
                  :numero_transetti,:forma_transetti,:inizio_transetti,:fine_transetti,:dislivello_transetti,:orientamento_transetti,:note_transetti,
                  :modulo2_id
serialize :disposizione_campionamento, Array

end

