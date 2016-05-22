class RecipesController < ApplicationController
  
  def index
  	@search_term = params[:search] || 'chocolate'
  	@recipes = JSON.parse( Recipe.for( @search_term ).parsed_response )['recipes']
  end

end
