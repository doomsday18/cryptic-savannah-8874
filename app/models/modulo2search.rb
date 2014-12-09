class Modulo2search < ActiveRecord::Base
	attr_accessible :keywords,:keywords1,:keywords2,:keywords3,:keywords4, :keywords5, :modulo1_id

	 def modulo2s
    @modulo2s ||= find_modulo2s
  end
  
private

  def find_modulo2s
    modulo2s = Modulo2.order(:titolo_modulo1)
    modulo2s = modulo2s.where("titolo_modulo1 like ?", "%#{keywords}%") if keywords.present?
    modulo2s = modulo2s.where("modulo1_id like ?", "%#{modulo1_id}%") if modulo1_id.present?
    modulo2s = modulo2s.where("compilatore like ?", "%#{keywords1}%") if keywords1.present?
    modulo2s = modulo2s.where("sottoprogetti like ?", "%#{keywords2}%") if keywords2.present?
    modulo2s = modulo2s.where("proprietario_autore like ?", "%#{keywords3}%") if keywords3.present?
    modulo2s = modulo2s.where("referente like ?", "%#{keywords4}%") if keywords4.present?
   
    modulo2s

    
  end

end
