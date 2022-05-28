class AddColumnCountsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :counts, :integer, default: 0, null: false
  end
end
