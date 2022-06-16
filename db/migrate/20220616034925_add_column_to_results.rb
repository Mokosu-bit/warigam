class AddColumnToResults < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :results, :string
  end
end
