class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true, index: false

      t.timestamps
    end

    add_index :rooms, %i[event_id user_id], unique: true
  end
end
