class CreateLogbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :logbooks do |t|
      t.text :summary
      t.references :emoji, null: true, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
