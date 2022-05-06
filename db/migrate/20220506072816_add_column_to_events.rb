class AddColumnToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :user_id, :bigint, null: false 
  end
end
