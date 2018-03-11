class HomeController < ApplicationController
  def index
    @now_playing = Tmdb::Movie.now_playing({region: 'us'})
    @upcoming = Tmdb::Movie.upcoming({region: 'us'})
    #render json: @now_playing
  end
end
