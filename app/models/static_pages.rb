class StaticPages < ActiveRecord::Base
	has_many :modulo1s
	
	def self.search(search)
  if search
    find(:all, :conditions => ['nome_progetto LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
