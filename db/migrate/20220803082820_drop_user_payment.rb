class DropUserPayment < ActiveRecord::Migration[6.1]
  def change
    drop_table :user_payments
  end
end
