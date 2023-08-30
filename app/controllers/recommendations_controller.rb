class RecommendationsController < ApplicationController
  def show
    @recommendation = Recommendation.find(params[:logbook_id])
  end
end
