class Mineralisearch < ActiveRecord::Base
	attr_accessible :keywords,:keywords1

	def segnalazione_mineralis
    @segnalazione_mineralis ||= find_segnalazione_mineralis
  end
  
private

  def find_segnalazione_mineralis
    segnalazione_mineralis = SegnalazioneMinerali.order(:titolo)
    segnalazione_mineralis = segnalazione_mineralis.where("titolo like ?", "%#{keywords}%") if keywords.present?
    
    segnalazione_mineralis
        
  end
end


