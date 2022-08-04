class DropPay < ActiveRecord::Migration[6.1]
  def change
    drop_table :pays
  end
end
