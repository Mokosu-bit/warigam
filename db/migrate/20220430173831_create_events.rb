class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.integer :mode, default: 0, null: false, limit: 1
      t.timestamps
    end
  end
end
