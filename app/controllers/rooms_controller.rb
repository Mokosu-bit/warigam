class RoomsController < ApplicationController

  def show
    @event = Event.find(params[:event_id])
    @joining_users = @event.joining_users
  end
end
