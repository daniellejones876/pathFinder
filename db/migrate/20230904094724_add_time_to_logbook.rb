class AddTimeToLogbook < ActiveRecord::Migration[7.0]
  def change
    add_column :logbooks, :time, :time
  end
end
