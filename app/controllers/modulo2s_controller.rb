class Modulo2sController < ApplicationController
  before_action :set_modulo2, only: [:show, :edit, :update, :destroy]

  
  def index
    user = User.find(params[:user_id])
    @modulo2s = user.modulo2s.order("titolo_modulo1").page(params[:page]).per_page(7)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @modulo2s }
    end
  end

  def show
    user = User.find(params[:user_id])
    @modulo2 = user.modulo2s.find(params[:id])
 
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @modulo2 }
    end
  end

  def new
  user = User.find(params[:user_id])
  @modulo2 = user.modulo2s.build
  @modulo2.teams.build
  @modulo2.variabilis.build
  @modulo2.organismis.build
  @modulo2.sistemi_biologicis.build
  @modulo2.riferimenti_spazialis.build
  @modulo2.transettis.build
  @modulo2.plots.build
  @modulo2.arees.build
  @modulo2.rasters.build
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @modulo2 }
    end
  end


  def edit
    user = User.find(params[:user_id])
    @modulo2 = user.modulo2s.find(params[:id])
    
  end

  def create
  user = User.find(params[:user_id])
  @modulo2 = user.modulo2s.create(params[:modulo2])
    respond_to do |format|
      if @modulo2.save
        format.html { redirect_to(user_modulo2s_path, :notice => 'Proposta di progetto inviata correttamente') }
        
        format.xml  { render :xml => @modulo2, :status => :created, :location => [@modulo2.user, @modulo2] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @modulo2.errors, :status => :unprocessable_entity }
      end
    end
 end




    
  
  
  def update
   user = User.find(params[:user_id])
   @modulo2 = user.modulo2s.find(params[:id])
   
     respond_to do |format|
      if @modulo2.update_attributes(params[:modulo2])
        format.html { redirect_to(user_modulo2s_path, :notice => 'Aggiornamento avvenuto con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @modulo2.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    user = User.find(params[:user_id])
    
    @modulo2 = user.modulo2s.find(params[:id])
    @modulo2.destroy
    @modulo2.teams.destroy
    @modulo2.variabilis.destroy
    @modulo2.organismis.destroy
    @modulo2.sistemi_biologicis.destroy
    @modulo2.riferimenti_spazialis.destroy
    @modulo2.transettis.destroy
    @modulo2.plots.destroy
    @modulo2.arees.destroy
    @modulo2.rasters.destroy
    respond_to do |format|
      format.html { redirect_to(user_modulo2s_path) }
      format.xml  { head :ok }
    end
  end

private

  def set_modulo2
    @modulo2 = Modulo2.find(params[:id])
  end

end