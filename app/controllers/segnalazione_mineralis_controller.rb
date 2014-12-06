class SegnalazioneMineralisController < ApplicationController
  before_action :set_segnalazione_minerali, only: [:show, :edit, :update, :destroy]


  def index
    
    user = User.find(params[:user_id])
    @segnalazione_mineralis = user.segnalazione_mineralis.order("titolo").page(params[:page]).per_page(7)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @segnalazione_mineralis }
    end
  end
 

  def show
    user = User.find(params[:user_id])
    @segnalazione_minerali = user.segnalazione_mineralis.find(params[:id])
 
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @segnalazione_minerali }
    end
  end
 

   def new
    
    user = User.find(params[:user_id])

    @segnalazione_minerali = user.segnalazione_mineralis.build
 
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @segnalazione_minerali }
    end
  end
 

  def edit
    
    user = User.find(params[:user_id])
    
    @segnalazione_minerali = user.segnalazione_mineralis.find(params[:id])
  end
 

  def create
    
    user = User.find(params[:user_id])
    
    @segnalazione_minerali = user.segnalazione_mineralis.create(params[:segnalazione_minerali])
 
    respond_to do |format|
      if @segnalazione_minerali.save
        format.html { redirect_to(user_segnalazione_mineralis_path, :notice => 'Segnalazione inviata correttamente') }
        
        format.xml  { render :xml => @segnalazione_minerali, :status => :created, :location => [@segnalazione_minerali.user, @segnalazione_minerali] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @segnalazione_minerali.errors, :status => :unprocessable_entity }
      end
    end
  end
 
  def update
    
    user = User.find(params[:user_id])
    
    @segnalazione_minerali = user.segnalazione_mineralis.find(params[:id])
 
    respond_to do |format|
      if @segnalazione_minerali.update_attributes(params[:segnalazione_minerali])
        format.html { redirect_to(user_segnalazione_mineralis_path, :notice => 'Segnalazione aggiornata con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @segnalazione_minerali.errors, :status => :unprocessable_entity }
      end
    end
  end
 

  def destroy
    
    user = User.find(params[:user_id])
    
    @segnalazione_minerali = user.segnalazione_mineralis.find(params[:id])
    @segnalazione_minerali.destroy
 
    respond_to do |format|
      format.html { redirect_to(user_segnalazione_mineralis_path) }
      format.xml  { head :ok }
    end
  end
  
   private

    def set_segnalazione_minerali
      @segnalazione_minerali = SegnalazioneMinerali.find(params[:id])
    end


end




  