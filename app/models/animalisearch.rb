class Animalisearch < ActiveRecord::Base
		attr_accessible :keywords,:keywords1,:keywords2,:keywords3,:keywords4

	 def segnalazione_animalis
    @segnalazione_animalis ||= find_segnalazione_animalis 
  end
  
private

  def find_segnalazione_animalis
    segnalazione_animalis = SegnalazioneAnimali.order(:Titolo)
    segnalazione_animalis = segnalazione_animalis.where("autore like ?", "%#{keywords}%") if keywords.present?
    segnalazione_animalis = segnalazione_animalis.where("classe like ?", "%#{keywords1}%") if keywords1.present?
    segnalazione_animalis = segnalazione_animalis.where("genere like ?", "%#{keywords2}%") if keywords2.present?
    segnalazione_animalis = segnalazione_animalis.where("specie like ?", "%#{keywords3}%") if keywords3.present?
    segnalazione_animalis = segnalazione_animalis.where("Titolo like ?", "%#{keywords4}%") if keywords4.present?

    segnalazione_animalis
  end
end
