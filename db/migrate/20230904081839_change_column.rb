class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    change_column_null :journals, :prompt_id, true
  end
end
