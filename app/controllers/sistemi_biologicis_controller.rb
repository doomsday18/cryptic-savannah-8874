class SistemiBiologicisController < ApplicationController
  before_action :set_sistemi_biologici, only: [:show, :edit, :update, :destroy]
layout false
def show
    modulo2 = Modulo2.find(params[:modulo2_id])
    @sistemi_biologici = modulo2.sistemi_biologicis.find(params[:id])
  if @sistemi_biologici.blank?
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sistemi_biologici }
  end
    end
  end

def new
  modulo2 = Modulo2.find(params[:modulo2_id])
  
     respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sistemi_biologici }
    end

  end

def edit
   modulo2 = Modulo2.find(params[:modulo2_id])
    @sistemi_biologici = modulo2.sistemi_biologicis.find(params[:id])
  end

 def create
  modulo2 = Modulo2.find(params[:modulo2_id])
   @sistemi_biologici = modulo2.sistemi_biologicis.create(params[:id])
    respond_to do |format|
      if @sistemi_biologici.save
        format.html { redirect_to(modulo2_sistemi_biologicis_path, :notice => 'Modifica effettuata') }
        
        format.xml  { render :xml => @sistemi_biologici, :status => :created, :location => [@sistemi_biologici.modulo2, @sistemi_biologici] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sistemi_biologici.errors, :status => :unprocessable_entity }
      end
    end
 end
end


def update
   modulo2 = Modulo2.find(params[:modulo2_id])
    @sistemi_biologici = modulo2.sistemi_biologicis.find(params[:id])
     respond_to do |format|
      if @sistemi_biologici.update_attributes(params[:sistemi_biologici])
        format.html { redirect_to(modulo2_sistemi_biologicis_path, :notice => 'Aggiornamento avvenuto con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sistemi_biologici.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    modulo2 = Modulo2.find(params[:modulo2_id])
     @sistemi_biologici = modulo2.sistemi_biologicis.find(params[:id])
    @sistemi_biologici.destroy
 
    respond_to do |format|
      format.html { redirect_to(new_user_modulo2_path) }
      format.xml  { head :ok }
    end
    end

 private
   def set_sistemi_biologici
      @sistemi_biologici = SistemiBiologici.find(params[:id])
    end

