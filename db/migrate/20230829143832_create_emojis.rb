class CreateEmojis < ActiveRecord::Migration[7.0]
  def change
    create_table :emojis do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
