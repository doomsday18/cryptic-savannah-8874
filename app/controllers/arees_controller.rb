class AreesController < InheritedResources::Base
	before_action :set_aree, only: [:show, :edit, :update, :destroy]
layout false
def show
    modulo2 = Modulo2.find(params[:modulo2_id])
    @aree = modulo2.arees.find(params[:id])
  if @aree.blank?
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aree }
  end
    end
  

def new
  modulo2 = Modulo2.find(params[:modulo2_id])
  
     respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aree }
    end

  end

def edit
   modulo2 = Modulo2.find(params[:modulo2_id])
    @aree = modulo2.arees.find(params[:id])
  end

 def create
  modulo2 = Modulo2.find(params[:modulo2_id])
   @aree = modulo2.arees.create(params[:id])
    respond_to do |format|
      if @aree.save
        format.html { redirect_to(modulo2_arees_path, :notice => 'Modifica effettuata') }
        
        format.xml  { render :xml => @aree, :status => :created, :location => [@aree.modulo2, @aree] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aree.errors, :status => :unprocessable_entity }
      end
    end
 end



def update
   modulo2 = Modulo2.find(params[:modulo2_id])
    @aree = modulo2.arees.find(params[:id])
     respond_to do |format|
      if @aree.update_attributes(params[:aree])
        format.html { redirect_to(modulo2_arees_path, :notice => 'Aggiornamento avvenuto con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aree.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    modulo2 = Modulo2.find(params[:modulo2_id])
     @aree = modulo2.arees.find(params[:id])
    @aree.destroy
 
    respond_to do |format|
      format.html { redirect_to(new_user_modulo2_path) }
      format.xml  { head :ok }
    end
    end

 private
   def set_aree
      @aree = Aree.find(params[:id])
    end

end




