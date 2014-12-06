class SegnalazioneAnimalisController < ApplicationController
  before_action :set_segnalazione_animali, only: [:show, :edit, :update, :destroy]

  
  def index
    user = User.find(params[:user_id])
    @segnalazione_animalis = user.segnalazione_animalis.order("Titolo").page(params[:page]).per_page(1)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @segnalazione_animalis }
    end
  end

  
  def show
       user = User.find(params[:user_id])
    @segnalazione_animali = user.segnalazione_animalis.find(params[:id])
 
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @segnalazione_animali }
    end
  end


  def new
   user = User.find(params[:user_id])

    @segnalazione_animali = user.segnalazione_animalis.build
 
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @segnalazione_animali }
    end
  end

 
  def edit
    user = User.find(params[:user_id])
    
    @segnalazione_animali = user.segnalazione_animalis.find(params[:id])
  end

  
  def create
  user = User.find(params[:user_id])
    
    @segnalazione_animali = user.segnalazione_animalis.create(params[:segnalazione_animali])
 
    respond_to do |format|
      if @segnalazione_animali.save
        format.html { redirect_to(user_segnalazione_animalis_path, :notice => 'Segnalazione inviata correttamente') }
        
        format.xml  { render :xml => @segnalazione_animali, :status => :created, :location => [@segnalazione_animali.user, @segnalazione_animali] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @segnalazione_animali.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  def update
      user = User.find(params[:user_id])
    
    @segnalazione_animali = user.segnalazione_animalis.find(params[:id])
 
    respond_to do |format|
      if @segnalazione_animali.update_attributes(params[:segnalazione_animali])
        format.html { redirect_to(user_segnalazione_animalis_path, :notice => 'Segnalazione aggiornata con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @segnalazione_animali.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  
  def destroy
  user = User.find(params[:user_id])
    
    @segnalazione_animali = user.segnalazione_animalis.find(params[:id])
    @segnalazione_animali.destroy
 
    respond_to do |format|
      format.html { redirect_to(user_segnalazione_animalis_path) }
      format.xml  { head :ok }
    end
  end

  private

    def set_segnalazione_animali
      @segnalazione_animali = SegnalazioneAnimali.find(params[:id])
    end

end
