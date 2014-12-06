class TransettisController < InheritedResources::Base
	before_action :set_transetti, only: [:show, :edit, :update, :destroy]
layout false
def show
    modulo2 = Modulo2.find(params[:modulo2_id])
    @transetti = modulo2.transettis.find(params[:id])
  if @transetti.blank?
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @transetti }
  end
    end
  end

def new
  modulo2 = Modulo2.find(params[:modulo2_id])
  
     respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @transetti }
    end

  end

def edit
   modulo2 = Modulo2.find(params[:modulo2_id])
    @transetti = modulo2.transettis.find(params[:id])
  end

 def create
  modulo2 = Modulo2.find(params[:modulo2_id])
   @transetti = modulo2.transettis.create(params[:id])
    respond_to do |format|
      if @transetti.save
        format.html { redirect_to(modulo2_transettis_path, :notice => 'Modifica effettuata') }
        
        format.xml  { render :xml => @transetti, :status => :created, :location => [@transetti.modulo2, @transetti] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @transetti.errors, :status => :unprocessable_entity }
      end
    end
 end
end


def update
   modulo2 = Modulo2.find(params[:modulo2_id])
    @transetti = modulo2.transettis.find(params[:id])
     respond_to do |format|
      if @transetti.update_attributes(params[:transetti])
        format.html { redirect_to(modulo2_transettis_path, :notice => 'Aggiornamento avvenuto con successo') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @transetti.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    modulo2 = Modulo2.find(params[:modulo2_id])
     @transetti = modulo2.transettis.find(params[:id])
    @transetti.destroy
 
    respond_to do |format|
      format.html { redirect_to(new_user_modulo2_path) }
      format.xml  { head :ok }
    end
    end

 private
   def set_transetti
      @transetti = Transetti.find(params[:id])
    end

end

end
