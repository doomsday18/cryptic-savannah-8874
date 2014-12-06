class RastersController < InheritedResources::Base
		before_action :set_raster, only: [:show, :edit, :update, :destroy]
layout false
def show
    modulo2 = Modulo2.find(params[:modulo2_id])
    @raster = modulo2.rasters.find(params[:id])
  if @raster.blank?
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @raster }
  end
    end
  end

def new
  modulo2 = Modulo2.find(params[:modulo2_id])
  
     respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @raster }
    end

  end

def edit
   modulo2 = Modulo2.find(params[:modulo2_id])
    @raster = modulo2.rasters.find(params[:id])
  end

 def create
  modulo2 = Modulo2.find(params[:modulo2_id])
   @raster = modulo2.rasters.create(params[:id])
    respond_to do |format|
      if @raster.save
        format.html { redirect_to(modulo2_rasters_path, :notice => 'Modifica effettuata') }
        
        format.xml  { render :xml => @raster, :status => :created, :location => [@raster.modulo2, @raster] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @raster.errors, :status => :unprocessable_entity }
      end
    end
 end
end


def update
   modulo2 = Modulo2.find(params[:modulo2_id])
    @raster = modulo2.rasters.find(params[:id])
     respond_to do |format|
      if @raster.update_attributes(params[:raster])
        format.html { redirect_to(modulo2_rasters_path, :notice => 'Aggiornamento avvenuto con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @raster.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    modulo2 = Modulo2.find(params[:modulo2_id])
     @raster = modulo2.rasters.find(params[:id])
    @raster.destroy
 
    respond_to do |format|
      format.html { redirect_to(new_user_modulo2_path) }
      format.xml  { head :ok }
    end
    end

 private
   def set_raster
      @raster = Raster.find(params[:id])
    end

end

end

end
