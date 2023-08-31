class JournalsController < ApplicationController
  before_action :set_journal, only: %i[edit update]
  before_action :set_logbook, only: %i[edit update]

  def new
    @journal = Journal.new
    @logbook = Logbook.find(params[:logbook_id])
  end

  def create
    @logbook = Logbook.find(params[:logbook_id])
    @journal = Journal.new(journal_params)
    @journal.logbook = @logbook

    if @journal.save
      redirect_to logbook_path(@journal.logbook), notice: 'Journal was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @journal.update(journal_params)
      redirect_to logbook_path(@journal.logbook), notice: 'Journal was successfully updated.', status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_logbook
    @logbook = Logbook.find(params[:logbook_id])
  end

  def set_journal
    @journal = Journal.find(params[:id])
  end

  def journal_params
    params.require(:journal).permit(:content, :prompt_id)
  end
end
