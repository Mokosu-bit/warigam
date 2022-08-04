class Modes::UnitsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    joined_users = event.joining_users
    if event.counts.zero?
      event.update(counts: 1)
      unit_s = event.gamble.total_amount.to_s.chars
      event.update(results: joined_users.sample(unit_s.length))
      redirect_to event_rooms_path
    else
      redirect_to events_path
    end
  end
end
