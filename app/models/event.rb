class Event < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :event_attendings, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendings

  def Event.past
    Event.where("event_date < ?", Time.now)
  end

  def Event.upcoming
    Event.where("event_date > ?", Time.now)
  end
end