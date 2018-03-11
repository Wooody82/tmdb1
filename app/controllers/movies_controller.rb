class MoviesController < ApplicationController
  def show
    @movie = Tmdb::Movie.detail(params[:id])
    @images = Tmdb::Movie.posters(params[:id])
    @cast = Tmdb::Movie.cast(params[:id])
    #@trailers = Tmdb::Movie.trailers(params[:id])
    @similar_movies = Tmdb::Movie.similar(params[:id])    
  end
end
