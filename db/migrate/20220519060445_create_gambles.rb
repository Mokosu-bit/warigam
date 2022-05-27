class CreateGambles < ActiveRecord::Migration[6.1]
  def change
    create_table :gambles do |t|
      t.belongs_to :events, null:false, index: { unique: true }, foreign_key: true
      t.integer :total_amount, null: false
      t.integer :people_number

      t.timestamps
    end
  end
end
