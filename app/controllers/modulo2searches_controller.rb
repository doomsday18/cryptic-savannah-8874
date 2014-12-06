class Modulo2searchesController < ApplicationController
		 def new
    @modulo2search = Modulo2search.new
  end

   def create
    @modulo2search = Modulo2search.create!(params[:modulo2search])
    redirect_to @modulo2search
  end
  
  def show

    @modulo2search = Modulo2search.find(params[:id])
    
  end
end
