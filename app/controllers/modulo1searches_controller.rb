class Modulo1searchesController < ApplicationController

	 def new
    @modulo1search = Modulo1search.new
  end

   def create
    @modulo1search = Modulo1search.create!(params[:modulo1search])
    redirect_to @modulo1search
  end
  
  def show

    @modulo1search = Modulo1search.find(params[:id])
    
  end
end
