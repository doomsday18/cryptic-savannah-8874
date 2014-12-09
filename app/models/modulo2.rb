class Modulo2 < ActiveRecord::Base
  include ActiveModel::Validations
      validates_acceptance_of :terms_of_service, :on => :create
  has_many :teams 
  has_many :variabilis
  has_many :sistemi_biologicis
  has_many :organismis
  has_many :rasters
  has_many :riferimenti_spazialis
  has_many :transettis
  has_many :arees
  has_many :plots

  before_create :set_titolo_modulo1
  before_update :update_titolo_modulo1

  belongs_to :modulo1, foreign_key: :modulo1_id
  belongs_to :user
  
  accepts_nested_attributes_for :teams, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :variabilis, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :organismis, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :sistemi_biologicis, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :riferimenti_spazialis, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :transettis, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :arees, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :plots, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :rasters, allow_destroy: true, reject_if: :all_blank
  
  
  attr_accessible :sottoprogetti,:difficolta,:suggerimenti,:note,:condizioni_iniziali, :processi_in_atto, :storia,
                  :organismi_numero, :organismi_tipologia, :disegno_sperimentale, :metodo_campionamento, 
                  :descrizione_campioni,:variabili_ambientali,:altre_variabili,:materializzazione,:altro,
                  :descrizione_percorso,:numero_di_ingressi,:punto_di_ingresso,:data_inizio,:data_fine,
                  :copertura_temporale,:abstract,:ElencoVariabili,:citazioni_bibliografiche,:citazioni_abstract,:documenti_files,
                  :localizzazione_documenti,:referente,:proprietario_autore,:materiale_consegnato,:bibliografia_moduli1e2, 
                  :modulo1_id, :teams_attributes, :compilatore,:descrizione_riferimenti_spaziali,
                  :variabilis_attributes, :organismis_attributes, :sistemi_biologicis_attributes, :riferimenti_spazialis_attributes,
                  :transettis_attributes, :arees_attributes, :plots_attributes, :rasters_attributes, :terms_of_service, :titolo_modulo1

  
private      
def set_titolo_modulo1
  self.titolo_modulo1 = Modulo1.find(modulo1_id).nome_progetto
  
  
end


def update_titolo_modulo1
  self.titolo_modulo1 = Modulo1.find(modulo1_id).nome_progetto
end 

def self.search(search)
  if search
    find(:all, :conditions => ['titolo_modulo1 LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end