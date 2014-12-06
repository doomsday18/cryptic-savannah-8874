class PlotsController < InheritedResources::Base
	before_action :set_plot, only: [:show, :edit, :update, :destroy]
layout false
def show
    modulo2 = Modulo2.find(params[:modulo2_id])
    @plot = modulo2.plots.find(params[:id])
  if @plot.blank?
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @plot }
  end
    end
  end

def new
  modulo2 = Modulo2.find(params[:modulo2_id])
  
     respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @plot }
    end

  end

def edit
   modulo2 = Modulo2.find(params[:modulo2_id])
    @plot = modulo2.plots.find(params[:id])
  end

 def create
  modulo2 = Modulo2.find(params[:modulo2_id])
   @plot = modulo2.plots.create(params[:id])
    respond_to do |format|
      if @plot.save
        format.html { redirect_to(modulo2_plots_path, :notice => 'Modifica effettuata') }
        
        format.xml  { render :xml => @plot, :status => :created, :location => [@plot.modulo2, @plot] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @plot.errors, :status => :unprocessable_entity }
      end
    end
 end
end


def update
   modulo2 = Modulo2.find(params[:modulo2_id])
    @plot = modulo2.plots.find(params[:id])
     respond_to do |format|
      if @plot.update_attributes(params[:plot])
        format.html { redirect_to(modulo2_plots_path, :notice => 'Aggiornamento avvenuto con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @plot.errors, :status => :unprocessable_entity }
      end
    end
  end


  def destroy
    modulo2 = Modulo2.find(params[:modulo2_id])
     @plot = modulo2.plots.find(params[:id])
    @plot.destroy
 
    respond_to do |format|
      format.html { redirect_to(new_user_modulo2_path) }
      format.xml  { head :ok }
    end
    end

 private
   def set_plot
      @plot = Plot.find(params[:id])
    end
end




