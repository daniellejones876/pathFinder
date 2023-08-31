class LogbooksController < ApplicationController
  before_action :set_logbook, only: %i[show edit update destroy]

  def index
    @logbooks = Logbook.where(user: current_user)
  end

  def show; end

  def new
    @logbook = Logbook.new
  end

  def create
    @logbook = Logbook.new(logbook_params)
    @logbook.user = current_user

    if @logbook.save
      redirect_to edit_logbook_path(@logbook), notice: 'Log was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @logbook.update(logbook_params)
      redirect_to logbook_path(@logbook), notice: 'Log was successfully updated.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @logbook.destroy
    redirect_to logbooks_path, notice: 'Log was successfully destroyed.'
  end

  private

  def set_logbook
    @logbook = Logbook.find(params[:id])
  end

  def logbook_params
    params.require(:logbook).permit(:summary, :image, :emoji_id)
  end
end
