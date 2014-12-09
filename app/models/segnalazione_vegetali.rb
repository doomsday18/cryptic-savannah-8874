class SegnalazioneVegetali < ActiveRecord::Base
  belongs_to :user
  #    validates :famiglia_macro, :presence => true
   #   validates :genere_macro,:presence => true
    #  validates :foto,:presence => true
     # validates :famiglia_micro,:presence => true
    #  validates :genere_micro,:presence => true
    #  validates :microfoto,:presence => true
    #  validates :campione,:presence => true
    #validates :titolo, :presence => true
    attr_accessible :famiglia_macro, :genere_macro, :foto, :famiglia_micro, :genere_micro, :microfoto, :campione, :Titolo

def self.search(search)
  if search
    find(:all, :conditions => ['Titolo LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
