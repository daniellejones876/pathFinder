class AddValueToEmojis < ActiveRecord::Migration[7.0]
  def change
    add_column :emojis, :value, :integer
  end
end
