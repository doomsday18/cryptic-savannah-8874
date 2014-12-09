class Modulo1 < ActiveRecord::Base
	belongs_to :user
	belongs_to :macrocategorie
	belongs_to :categorie
    belongs_to :microcategorie

	has_one :modulo2, primary_key: :id
	before_create :set_settore_scientifico_progetto
    before_update :update_settore_scientifico_progetto

	attr_accessible :nome_progetto,:responsabile_riferimento_rnt, :istituzione_riferimento_progetto, :istituzioni_coinvolte_progetto, 
	                :settore_scientifico_progetto, :obiettivi_progetto,  :data_inizio_progetto, :data_fine_progetto, :url_progetto,
                    :background_razionale, :assiomi_background, :domande_background, :ipotesi_background, :note_background, :tipologia_organizzazione,
                    :altro_organizzazione, :campo_studio_applicazione_organizzazione, :nazione_organizzazione,:regione_organizzazione, :regione_organizzazione,
                    :provincia_organizzazione, :indirizzo_organizzazione, :tel_organizzazione, :email_organizzazione, :persona_di_riferimento_organizzazione,
                    :url_organizzazione, :coordinatore_relatore_team, :titolare_rilevatore_team, :elenco_nominale_operatori_tecnici_team, :Approvato , 
                    :macrocat_sett_scient ,:cat_sett_scient , :microcat_sett_scient,:macrocategorie_id,:categorie_id,:microcategorie_id


private      
def set_settore_scientifico_progetto
	self.macrocat_sett_scient = Macrocategorie.find(macrocategorie_id).nome
    
    if categorie_id== nil
	self.cat_sett_scient= " "
    else
    self.cat_sett_scient = Categorie.find(categorie_id).nome
    end
    if microcategorie_id == nil
	self.microcat_sett_scient = " "
    else
    self.microcat_sett_scient = Microcategorie.find(microcategorie_id).nome
    end
    self.settore_scientifico_progetto = "#{macrocat_sett_scient}<br/>#{cat_sett_scient}<br/>#{microcat_sett_scient}"
    
  end
  



def update_settore_scientifico_progetto
	self.macrocat_sett_scient = Macrocategorie.find(macrocategorie_id).nome
    
    if categorie_id== nil
	self.cat_sett_scient= " "
    else
    self.cat_sett_scient = Categorie.find(categorie_id).nome
    end
    if microcategorie_id == nil
	self.microcat_sett_scient = " "
    else
    self.microcat_sett_scient = Microcategorie.find(microcategorie_id).nome
    end
    self.settore_scientifico_progetto = "#{macrocat_sett_scient}<br/>#{cat_sett_scient}<br/>#{microcat_sett_scient}"
    
  end

def self.search(search)
  if search
    find(:all, :conditions => ['nome_progetto LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end


	


end


 
 


      
      
      