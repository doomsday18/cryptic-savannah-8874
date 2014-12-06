class VariabilisController < InheritedResources::Base
  before_action :set_variabili, only: [:show, :edit, :update, :destroy]
layout false
def show
    modulo2 = Modulo2.find(params[:modulo2_id])
    @variabili = modulo2.variabilis.find(params[:id])
  if @variabili.blank?
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @variabili }
  end
    end
  end

def variabilis_params # redefining the Strong Params
  params[:variabili][:disposizione_campionamento] ||= []
  params.permit(:whatever).require(:another)
end

def new
  modulo2 = Modulo2.find(params[:modulo2_id])
  
     respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @variabili }
    end

  end

def edit
   modulo2 = Modulo2.find(params[:modulo2_id])
    @variabili = modulo2.variabilis.find(params[:id])
  end

 def create
  modulo2 = Modulo2.find(params[:modulo2_id])
   @variabili = modulo2.variabilis.create(params[:id])
    respond_to do |format|
      if @variabili.save
        format.html { redirect_to(modulo2_variabilis_path, :notice => 'Modifica effettuata') }
        
        format.xml  { render :xml => @variabili, :status => :created, :location => [@variabili.modulo2, @variabili] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @variabili.errors, :status => :unprocessable_entity }
      end
    end
 end
end


def update
   modulo2 = Modulo2.find(params[:modulo2_id])
    @variabili = modulo2.variabilis.find(params[:id])
     respond_to do |format|
      if @variabili.update_attributes(params[:variabili])
        format.html { redirect_to(modulo2_variabilis_path, :notice => 'Aggiornamento avvenuto con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @variabili.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    modulo2 = Modulo2.find(params[:modulo2_id])
     @variabili = modulo2.variabilis.find(params[:id])
    @variabili.destroy
 
    respond_to do |format|
      format.html { redirect_to(new_user_modulo2_path) }
      format.xml  { head :ok }
    end
    end

 private
   def set_variabili
      @variabili = Variabili.find(params[:id])
    end



