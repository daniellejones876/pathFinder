class PlaylistsController < ApplicationController
  def show
    @logbook = Logbook.find(params[:logbook_id])
    @recommendations = @logbook.emoji.playlists
  end
end
