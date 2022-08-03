class CreatePays < ActiveRecord::Migration[6.1]
  def change
    create_table :pays do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true, index: false
      t.integer :payment_amount, null: false, default: 0

      t.timestamps
    end

    add_index :pays, %i[event_id user_id], unique: true
  end
end
