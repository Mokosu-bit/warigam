class RoomsController < ApplicationController

  def show
    @event = Event.find(params[:event_id])
    @joined_users = @event.joining_users
  end
end
