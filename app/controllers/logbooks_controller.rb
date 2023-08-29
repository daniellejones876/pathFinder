class LogbooksController < ApplicationController
  before_action :set_logbook, only: %i[edit update destroy]

  def index
    @logbooks = Logbook.all
  end

  def show; end

  def new
    @logbook = Logbook.new
  end

  def create
    @logbook = Logbook.new(logbook_params)

    if @logbook.image.attached?
      redirect_to logbook_path(@logbook), notice: 'Log was successfully created.' if @logbook.save
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @logbook.update(logbook_params)
      redirect_to home_path, notice: 'Logbook was successfully updated.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @logbook.destroy
    redirect_to home_path, notice: 'Logbook was successfully destroyed.'
  end

  private

  def set_logbook
    @logbook = Logbook.find(params[:id])
  end

  def logbook_params
    params.require(:logbook).permit(:summary, :image, :date, :emoji_id, :user_id)
  end
end
