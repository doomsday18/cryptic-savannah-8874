class OrganizzazioneDiRiferimento < ActiveRecord::Base
  belongs_to :nazione
  belongs_to :regione
  belongs_to :provincia
  belongs_to :modulo2
end
