class RecommendationsController < ApplicationController
  def show
    @logbook = Logbook.find(params[:logbook_id])
    @recommendation = @logbook.emoji.playlists.sample.title
  end

  def create
    @logbook = Logbook.find(params[:id])
    @recommendation = Recommendation.new
    @recommendation.logbook = @logbook
    @recommendation.logbook.emoji = @logbook.emoji

    @recommendation.save
  end
end
