class SegnalazioneMinerali < ActiveRecord::Base
  belongs_to :user
  validates :note,  :presence => true
  validates :titolo, :presence => true
  attr_accessible :titolo, :note

def self.search(search)
  if search
    find(:all, :conditions => ['titolo LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end  
end
