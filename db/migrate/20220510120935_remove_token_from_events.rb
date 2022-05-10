class RemoveTokenFromEvents < ActiveRecord::Migration[6.1]
  def up
    remove_column :events, :token
  end

  def down
    add_column :events, :token, :string
  end
end
