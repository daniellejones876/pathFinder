class AddTimeToJournal < ActiveRecord::Migration[7.0]
  def change
    add_column :journals, :time, :time
  end
end
