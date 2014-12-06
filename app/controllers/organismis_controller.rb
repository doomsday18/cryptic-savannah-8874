class OrganismisController < ApplicationController
  before_action :set_organismi, only: [:show, :edit, :update, :destroy]
layout false
def show
    modulo2 = Modulo2.find(params[:modulo2_id])
    @organismi = modulo2.organismis.find(params[:id])
  if @organismi.blank?
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @organismi }
  end
    end
  end

def new
  modulo2 = Modulo2.find(params[:modulo2_id])
  
     respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @organismi }
    end

  end

def edit
   modulo2 = Modulo2.find(params[:modulo2_id])
    @organismi = modulo2.organismis.find(params[:id])
  end

 def create
  modulo2 = Modulo2.find(params[:modulo2_id])
   @organismi = modulo2.organismis.create(params[:id])
    respond_to do |format|
      if @organismi.save
        format.html { redirect_to(modulo2_organismis_path, :notice => 'Modifica effettuata') }
        
        format.xml  { render :xml => @organismi, :status => :created, :location => [@organismi.modulo2, @organismi] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @organismi.errors, :status => :unprocessable_entity }
      end
    end
 end
end


def update
   modulo2 = Modulo2.find(params[:modulo2_id])
    @organismi = modulo2.organismis.find(params[:id])
     respond_to do |format|
      if @organismi.update_attributes(params[:organismi])
        format.html { redirect_to(modulo2_organismis_path, :notice => 'Aggiornamento avvenuto con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @organismi.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    modulo2 = Modulo2.find(params[:modulo2_id])
     @organismi = modulo2.organismis.find(params[:id])
    @organismi.destroy
 
    respond_to do |format|
      format.html { redirect_to(new_user_modulo2_path) }
      format.xml  { head :ok }
    end
    end

 private
   def set_organismi
      @organismi = Organismi.find(params[:id])
    end
