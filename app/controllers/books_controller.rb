class BooksController < ApplicationController
  def show
    @logbook = Logbook.find(params[:logbook_id])
    @recommendations = @logbook.emoji.books
  end
end
