class RiferimentiSpazialisController < InheritedResources::Base
	before_action :set_riferimenti_spaziali, only: [:show, :edit, :update, :destroy]
layout false
def show
    modulo2 = Modulo2.find(params[:modulo2_id])
    @riferimenti_spaziali = modulo2.riferimenti_spazialis.find(params[:id])
  if @riferimenti_spaziali.blank?
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @riferimenti_spaziali }
  end
    end
  end

def new
  modulo2 = Modulo2.find(params[:modulo2_id])
  
     respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @riferimenti_spaziali }
    end

  end

def edit
   modulo2 = Modulo2.find(params[:modulo2_id])
    @riferimenti_spaziali = modulo2.riferimenti_spazialis.find(params[:id])
  end

 def create
  modulo2 = Modulo2.find(params[:modulo2_id])
   @riferimenti_spaziali = modulo2.riferimenti_spazialis.create(params[:id])
    respond_to do |format|
      if @riferimenti_spaziali.save
        format.html { redirect_to(modulo2_riferimenti_spazialis_path, :notice => 'Modifica effettuata') }
        
        format.xml  { render :xml => @riferimenti_spaziali, :status => :created, :location => [@riferimenti_spaziali.modulo2, @riferimenti_spaziali] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @riferimenti_spaziali.errors, :status => :unprocessable_entity }
      end
    end
 end
end


def update
   modulo2 = Modulo2.find(params[:modulo2_id])
    @riferimenti_spaziali = modulo2.riferimenti_spazialis.find(params[:id])
     respond_to do |format|
      if @riferimenti_spaziali.update_attributes(params[:riferimenti_spaziali])
        format.html { redirect_to(modulo2_riferimenti_spazialis_path, :notice => 'Aggiornamento avvenuto con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @riferimenti_spaziali.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    modulo2 = Modulo2.find(params[:modulo2_id])
     @riferimenti_spaziali = modulo2.riferimenti_spazialis.find(params[:id])
    @riferimenti_spaziali.destroy
 
    respond_to do |format|
      format.html { redirect_to(new_user_modulo2_path) }
      format.xml  { head :ok }
    end
    end

 private
   def set_riferimenti_spaziali
      @riferimenti_spaziali = RiferimentiSpaziali.find(params[:id])
    end


