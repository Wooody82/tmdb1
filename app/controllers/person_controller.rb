class PersonController < ApplicationController
  def show
  	@people = Tmdb::Person.detail(params[:id])
  	@movies = Tmdb::Person.movie_credits(params[:id])
  end
end