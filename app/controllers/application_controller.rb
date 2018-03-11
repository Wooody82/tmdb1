class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception 
  before_action :set_config

  def set_config
    @config = Tmdb::Configuration.get
  end
end
