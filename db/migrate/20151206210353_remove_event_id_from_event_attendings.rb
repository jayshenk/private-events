class RemoveEventIdFromEventAttendings < ActiveRecord::Migration
  def change
    remove_column :event_attendings, :event_id, :integer
  end
end
