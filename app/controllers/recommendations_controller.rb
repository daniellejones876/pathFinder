class RecommendationsController < ApplicationController
  def show
    @recommendation = Recommendation.last.logbook.emoji.playlists.sample.title
  end
end
