class DropPayment < ActiveRecord::Migration[6.1]
  def change
    drop_table :payments
  end
end
