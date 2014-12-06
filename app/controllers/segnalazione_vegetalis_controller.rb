class SegnalazioneVegetalisController < ApplicationController
  before_action :set_segnalazione_vegetali, only: [:show, :edit, :update, :destroy]

  
  def index
    
    user = User.find(params[:user_id])
    @segnalazione_vegetalis = user.segnalazione_vegetalis.order("Titolo").page(params[:page]).per_page(7)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @segnalazione_vegetalis }
    end
  end
 
  

  def show
    user = User.find(params[:user_id])
    @segnalazione_vegetali = user.segnalazione_vegetalis.find(params[:id])
 
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @segnalazione_vegetali }
    end
  end
 
  
  def new
    
    user = User.find(params[:user_id])

    @segnalazione_vegetali = user.segnalazione_vegetalis.build
 
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @segnalazione_vegetali }
    end
  end
 

 
  def edit
    
    user = User.find(params[:user_id])
    
    @segnalazione_vegetali = user.segnalazione_vegetalis.find(params[:id])
  end
 

 
  def create
    
    user = User.find(params[:user_id])
    
    @segnalazione_vegetali = user.segnalazione_vegetalis.create(params[:segnalazione_vegetali])
 
    respond_to do |format|
      if @segnalazione_vegetali.save
        format.html { redirect_to(user_segnalazione_vegetalis_path, :notice => 'Segnalazione inviata correttamente') }
        
        format.xml  { render :xml => @segnalazione_vegetali, :status => :created, :location => [@segnalazione_vegetali.user, @segnalazione_vegetali] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @segnalazione_vegetali.errors, :status => :unprocessable_entity }
      end
    end
  end
 

 
  def update
    
    user = User.find(params[:user_id])
    
    @segnalazione_vegetali = user.segnalazione_vegetalis.find(params[:id])
 
    respond_to do |format|
      if @segnalazione_vegetali.update_attributes(params[:segnalazione_vegetali])
        format.html { redirect_to(user_segnalazione_vegetalis_path, :notice => 'Segnalazione aggiornata con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @segnalazione_vegetali.errors, :status => :unprocessable_entity }
      end
    end
  end
 
 
  def destroy
    
    user = User.find(params[:user_id])
    
    @segnalazione_vegetali = user.segnalazione_vegetalis.find(params[:id])
    @segnalazione_vegetali.destroy
 
    respond_to do |format|
      format.html { redirect_to(user_segnalazione_vegetalis_path) }
      format.xml  { head :ok }
    end
  end
  
 
   public
 
    def set_segnalazione_vegetali
      @segnalazione_vegetali = SegnalazioneVegetali.find(params[:id])
    end


end
