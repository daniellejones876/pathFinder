class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @logbook = Logbook.last
  end

  def profile; end
end
