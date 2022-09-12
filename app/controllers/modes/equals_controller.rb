class Modes::EqualsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    joined_users = event.joining_users
    if event.counts.zero?
      event.equals(joined_users)
      redirect_to event_rooms_path
    else
      redirect_to events_path
    end
  end
end
