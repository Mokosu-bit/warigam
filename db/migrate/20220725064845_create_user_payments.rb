class CreateUserPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :user_payments do |t|
      t.integer :payment_amount
      t.references :user, null: false, foreign_key: true
      t.references :gamble, null: false, foreign_key: true

      t.timestamps
    end

    add_index :user_payments, %i[user_id gamble_id], unique: true
  end
end
