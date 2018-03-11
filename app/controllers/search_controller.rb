class SearchController < ApplicationController
	def index
		@movie = Tmdb::Search.movie(params[:query])
	end
end