class AddBookIdToRecommendations < ActiveRecord::Migration[7.0]
  def change
    add_reference :recommendations, :book, null: true, foreign_key: true
  end
end
