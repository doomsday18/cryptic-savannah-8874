class Vegetalisearch < ActiveRecord::Base
	attr_accessible :keywords,:keywords1,:keywords2,:keywords3,:keywords4

	 def segnalazione_vegetalis
    @segnalazione_vegetalis ||= find_segnalazione_vegetalis
  end
  
private

  def find_segnalazione_vegetalis
    segnalazione_vegetalis = SegnalazioneVegetali.order(:Titolo)
    segnalazione_vegetalis = segnalazione_vegetalis.where("Titolo like ?", "%#{keywords}%") if keywords.present?
    segnalazione_vegetalis = segnalazione_vegetalis.where("famiglia_macro like ?", "%#{keywords1}%") if keywords1.present?
    segnalazione_vegetalis = segnalazione_vegetalis.where("famiglia_micro like ?", "%#{keywords3}%") if keywords3.present?
    segnalazione_vegetalis = segnalazione_vegetalis.where("genere_macro like ?", "%#{keywords2}%") if keywords2.present?
    segnalazione_vegetalis = segnalazione_vegetalis.where("genere_micro like ?", "%#{keywords4}%") if keywords4.present?
    segnalazione_vegetalis
  end
end
