class CreateRecommendations < ActiveRecord::Migration[7.0]
  def change
    create_table :recommendations do |t|
      t.references :logbook, null: false, foreign_key: true
      t.string :playlist_url

      t.timestamps
    end
  end
end
