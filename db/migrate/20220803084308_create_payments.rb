class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :gamble, null: false, foreign_key: true
      t.integer :payment_amount, null: false, default: 0

      t.timestamps
    end
    
    add_index :payments, %i[user_id gamble_id], unique: true
  end
end
