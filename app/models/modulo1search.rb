class Modulo1search < ActiveRecord::Base
attr_accessible :keywords,:keywords1,:keywords2,:keywords3,:keywords4, :keywords5, :macrocategory_id, :category_id,:microcategory_id

	 def modulo1s
    @modulo1s ||= find_modulo1s
  end
  
private

  def find_modulo1s
    modulo1s = Modulo1.order(:nome_progetto)
    modulo1s = modulo1s.where("nome_progetto like ?", "%#{keywords}%") if keywords.present?
    modulo1s = modulo1s.where("istituzione_riferimento_progetto like ?", "%#{keywords1}%") if keywords1.present?
    modulo1s = modulo1s.where("macrocat_sett_scient like ?", "%#{keywords2}%") if keywords2.present?
    modulo1s = modulo1s.where("macrocategorie_id like ?", "%#{macrocategory_id}%") if macrocategory_id.present?
    modulo1s = modulo1s.where("cat_sett_scient like ?", "%#{keywords3}%") if keywords3.present?
    modulo1s = modulo1s.where("categorie_id like ?", "%#{category_id}%") if category_id.present?
    modulo1s = modulo1s.where("microcat_sett_scient like ?", "%#{keywords4}%") if keywords4.present?
    modulo1s = modulo1s.where("microcategorie_id like ?", "%#{microcategory_id}%") if microcategory_id.present?

    modulo1s
  end

end
