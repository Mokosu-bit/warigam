class RenameEventsIdColumnToGambles < ActiveRecord::Migration[6.1]
  def change
    rename_column :gambles, :events_id, :event_id
  end
end
