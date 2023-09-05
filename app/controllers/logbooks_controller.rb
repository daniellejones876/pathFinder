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

  def destroy
    @logbook.destroy
    redirect_to logbooks_path, notice: 'Log was successfully destroyed.'
  end

  def date
    @date = Date.parse(params[:date])
    @logbooks = Logbook.where("EXTRACT(YEAR from created_at) = ? and EXTRACT(MONTH from created_at) = ? and EXTRACT(DAY from created_at) = ?", @date.year, @date.month, @date.day)
  end

  def data
    current_date = Date.today
    start_of_week = current_date.beginning_of_week
    end_of_week = current_date.end_of_week
    @current_logbooks = Logbook.where(created_at: start_of_week..end_of_week).where(user_id: current_user.id)
    @data = {}
    @current_logbook_day = @current_logbooks.group_by{ |e| e.created_at.strftime("%a")}
    @current_logbook_day.each_value do |array_logbooks|
      max_value = 0
      array_logbooks.each do |logbook|
        max_value = logbook.emoji.value >= max_value ? logbook.emoji.value : max_value
      end
      @data[@current_logbook_day.key(array_logbooks)] = max_value
    end

    respond_to do |format|
      format.json
    end
  end

  private

  def set_logbook
    @logbook = Logbook.find(params[:id])
  end

  def logbook_params
    params.require(:logbook).permit(:summary, :image, :emoji_id)
  end
end
