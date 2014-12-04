class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
      if verify_recaptcha 
          super
      else
        flash.delete(:recaptcha_error)
        build_resource
        clean_up_passwords(resource)
        flash[:notice] = "Errore con il codice captcha. Inserire di nuovo il codice."
        render :new
      end
end

def update
  super
end

def has_segnalazioneminerali?(segnalazioneminerali)
  self.Segnalazionemineralis.exists?(:id => segnalazioneminerali.user_id)
end

end