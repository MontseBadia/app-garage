class SearchController < ApplicationController

  def index
    @apps = App.where("name LIKE ?", "%#{params[:query]}%")
    # render json: @apps
  end

end