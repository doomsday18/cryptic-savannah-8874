class StaticPagesController < ApplicationController
  def home
  end
  def admin_page
    @users = User.all
    @users = User.order("email")
    @modulo1s = Modulo1.all
    
  end
  def user_pages
    
  end
  def segnalazioni
  end
  def legendacategorie
  	render :layout => false
  	end
  def legendavariabili
  	render :layout => false
  end
  def legendaruoli
    render :layout => false
  end
  def metadati_modulo1

     @modulo1s = Modulo1.all
     @modulo1s = Modulo1.order("nome_progetto").page(params[:page]).per_page(7)
    
  end
  def metadati_modulo2
     @modulo2s = Modulo2.all
     @modulo2s = Modulo2.order("titolo_modulo1").page(params[:page]).per_page(7)
  end
  def metadati_animale
    @segnalazione_animalis = SegnalazioneAnimali.all
    @segnalazione_animalis = SegnalazioneAnimali.order("Titolo").page(params[:page]).per_page(7)
    
  end
  def metadati_vegetale
    @segnalazione_vegetalis = SegnalazioneVegetali.all
    @segnalazione_vegetalis = SegnalazioneVegetali.order("Titolo").page(params[:page]).per_page(7)
    
  end
  def metadati_minerale
    @segnalazione_mineralis = SegnalazioneMinerali.all
    @segnalazione_mineralis = SegnalazioneMinerali.order("titolo").page(params[:page]).per_page(7)
    
  end
end
