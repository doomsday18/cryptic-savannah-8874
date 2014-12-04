class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
     
          super
     
     
  end

def update
  super
end

def has_segnalazioneminerali?(segnalazioneminerali)
  self.Segnalazionemineralis.exists?(:id => segnalazioneminerali.user_id)
end

end