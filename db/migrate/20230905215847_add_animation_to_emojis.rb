class AddAnimationToEmojis < ActiveRecord::Migration[7.0]
  def change
    add_column :emojis, :animation, :string
  end
end
