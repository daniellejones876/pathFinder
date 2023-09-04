class RecommendationsController < ApplicationController
  def create
    @logbook = Logbook.find(params[:id])
    @recommendation = Recommendation.new
    @recommendation.logbook = @logbook
    @recommendation.logbook.emoji = @logbook.emoji

    @recommendation.save
  end

  def show
  end
end
