class AddColumnToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :payment, :integer, null: false, default: 0
  end
end
