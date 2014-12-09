class SegnalazioneAnimali < ActiveRecord::Base
  belongs_to :user
   #validates :classe, :presence => true
   #validates :epiteto, :presence => true
   #validates :genere, :presence => true
   #validates :specie, :presence => true
   #validates :autore, :presence => true
   #validates :foto, :presence => true
   #validates :titolo, :presence => true
  attr_accessible :classe, :epiteto, :genere, :specie, :autore, :foto, :Titolo

  def self.search(search)
  if search
    find(:all, :conditions => ['Titolo LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
