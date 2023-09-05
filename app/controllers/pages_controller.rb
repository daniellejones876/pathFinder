
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @logbook = Logbook.where(user: current_user).last
  end

  def profile
    @logbooks = Logbook.where(user: current_user)
    @this_week = @logbooks.where(created_at: (Date.today - 7)..(Date.tomorrow))
  end
end
