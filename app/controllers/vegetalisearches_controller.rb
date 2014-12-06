class VegetalisearchesController < ApplicationController
	 def new
    @vegetalisearch = Vegetalisearch.new
  end

   def create
    @vegetalisearch = Vegetalisearch.create!(params[:vegetalisearch])
    redirect_to @vegetalisearch
  end
  
  def show

    @vegetalisearch = Vegetalisearch.find(params[:id])
    
  end
end
