class CreateEventAttendings < ActiveRecord::Migration
  def change
    create_table :event_attendings do |t|
      t.integer :event_id
      t.integer :attendee_id
      t.integer :attended_event_id
    end
  end
end
