class AddFadeAnimationToEmoji < ActiveRecord::Migration[7.0]
  def change
    add_column :emojis, :fadeanimation, :string
  end
end
