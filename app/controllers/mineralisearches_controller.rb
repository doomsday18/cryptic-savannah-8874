class MineralisearchesController < ApplicationController
	 def new
    @mineralisearch = Mineralisearch.new
  end

   def create
    @mineralisearch = Mineralisearch.create!(params[:mineralisearch])
    redirect_to @mineralisearch
  end
  
  def show

    @mineralisearch = Mineralisearch.find(params[:id])
    
  end
end
