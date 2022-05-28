class RoomsController < ApplicationController

  def show
    @event = Event.find(params[:event_id])
    @joined_users = @event.joining_users
    
    # ----------- 割振モード -----------

    # ----------- 平等モード -----------
    @equal_amount = @event.gamble.total_amount / @event.gamble.people_number
    @selected_users = @joined_users.sample(1)

    # ----------- 単位モード -----------
  end

  def mode
    event = Event.find(params[:event_id])
    if event.counts.zero?
      event.update(counts: 1)
      redirect_to event_rooms_path
    else
      redirect_to event_rooms_path
    end
  end
end
