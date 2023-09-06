class AddDateToLogbooks < ActiveRecord::Migration[7.0]
  def change
    add_column :logbooks, :date, :date
  end
end
