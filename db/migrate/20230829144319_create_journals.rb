class CreateJournals < ActiveRecord::Migration[7.0]
  def change
    create_table :journals do |t|
      t.text :content
      t.references :logbook, null: false, foreign_key: true
      t.references :prompt, null: true, foreign_key: true

      t.timestamps
    end
  end
end
