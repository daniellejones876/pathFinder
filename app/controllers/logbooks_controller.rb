class LogbooksController < ApplicationController
  before_action :set_logbook, only: %i[show edit update destroy]

  def index
    @logbooks = Logbook.where(user: current_user).order("date DESC")
  end

  def show; end

  def new
    @logbook = Logbook.new
  end

  def create
    @logbook = Logbook.new(logbook_params)
    @logbook.user = current_user
    @logbook.date = Date.today
    @logbook.time = Time.now

    if @logbook.save
      redirect_to edit_logbook_path(@logbook), notice: 'Log was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @logbook.update(logbook_params)
      if params[:submit] == 'Book recommendation'
        redirect_to logbook_book_path(@logbook)
      elsif params[:submit] == 'Playlist recommendation'
        redirect_to logbook_playlist_path(@logbook)
      end
      recommendations_controller = RecommendationsController.new
      recommendations_controller.request = request
      recommendations_controller.response = response
      recommendations_controller.create
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def date
    @date = Date.parse(params[:date])

    @logbooks = Logbook.where("EXTRACT(YEAR from created_at) = ? and EXTRACT(MONTH from created_at) = ? and EXTRACT(DAY from created_at) = ?", @date.year, @date.month, @date.day)
  end

  private

  def set_logbook
    @logbook = Logbook.find(params[:id])
  end

  def logbook_params
    params.require(:logbook).permit(:summary, :image, :emoji_id)
  end
end
