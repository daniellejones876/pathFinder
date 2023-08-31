class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @logbook = Logbook.where(user: current_user).last
  end

  def profile
    @logbooks = Logbook.where(user: current_user)
    @this_month = @logbooks.where(created_at: (Date.today - 30)..(Date.tomorrow))
  end
end
