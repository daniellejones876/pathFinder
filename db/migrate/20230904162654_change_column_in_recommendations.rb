class ChangeColumnInRecommendations < ActiveRecord::Migration[7.0]
  def change
    change_column_null :recommendations, :logbook_id, true
  end
end
