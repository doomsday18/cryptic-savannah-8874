class Modulo1sController < ApplicationController
  before_action :set_modulo1, only: [:show, :edit, :update, :destroy]


  def index
     user = User.find(params[:user_id])
    @modulo1s = user.modulo1s.order("nome_progetto").page(params[:page]).per_page(7)
    
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @modulo1s }
    end
  end

  
  def show
    user = User.find(params[:user_id])
    @modulo1 = user.modulo1s.find(params[:id])
 
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @modulo1 }
    end
  end

  

  def new
    user = User.find(params[:user_id])
    @modulo1 = user.modulo1s.build
    
 
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @modulo1 }
    end
  end

  
  def edit
    user = User.find(params[:user_id])
    @modulo1 = user.modulo1s.find(params[:id])
  end

  def create
     user = User.find(params[:user_id])
    
    @modulo1 = user.modulo1s.create(params[:modulo1])
  
    respond_to do |format|
      if @modulo1.save
        format.html { redirect_to(user_modulo1s_path, :notice => 'Proposta di progetto inviata correttamente') }
        
        format.xml  { render :xml => @modulo1, :status => :created, :location => [@modulo1.user, @modulo1] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @modulo1.errors, :status => :unprocessable_entity }
      end
    end
  end


  def update
 user = User.find(params[:user_id])
    
    @modulo1 = user.modulo1s.find(params[:id])
 
    respond_to do |format|
      if @modulo1.update_attributes(params[:modulo1])
        format.html { redirect_to(user_modulo1s_path, :notice => 'Aggiornamento avvenuto con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @modulo1.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  
  def destroy
  user = User.find(params[:user_id])
    
    @modulo1 = user.modulo1s.find(params[:id])
    @modulo1.destroy
 
    respond_to do |format|
      format.html { redirect_to(user_modulo1s_path) }
      format.xml  { head :ok }
    end
  end

  private
   def set_modulo1
      @modulo1 = Modulo1.find(params[:id])
    end
end
