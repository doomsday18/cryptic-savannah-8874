class JavascriptsController < ApplicationController
	def dynamic_categories
		@categories= Categorie.find(:all)
		
	end
end
