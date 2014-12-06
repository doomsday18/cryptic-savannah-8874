class AnimalisearchesController < ApplicationController
	 def new
    @animalisearch = Animalisearch.new
  end

   def create
    @animalisearch = Animalisearch.create!(params[:animalisearch])
    redirect_to @animalisearch
  end
  
  def show

    @animalisearch = Animalisearch.find(params[:id])
    
  end
end
