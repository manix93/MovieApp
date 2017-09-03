class ActorsController < ApplicationController
  before_action :require_user, only: [:index, :show]

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
    @movies = @actor.movies
  end
end
