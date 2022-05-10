class AddTokenToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :token, :string, null: false
  end
end
