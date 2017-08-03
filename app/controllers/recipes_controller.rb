class RecipesController < ApplicationController
  def index
	  # check if request parameter search was passed in;
	  # use "chocolate" as default if not
	  @search_term = params[:search] || "chocolate"
	  @recipes = Recipe.for @search_term
  end
end
