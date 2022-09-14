class RoomsController < ApplicationController
  before_action :move_to_signed_in

  def show
    @event = Event.find(params[:event_id])
    @joined_users = @event.joining_users.order(rooms: :asc)

    respond_to do |format|
      format.html

      format.json { render json: @joined_users }
    end

    # ----------- 割振モード -----------
    if @event.mode == 'share'

    # ----------- 平等モード -----------
    elsif @event.mode == 'equal'
      @equal_amount = @event.gamble.total_amount / @event.gamble.people_number

    # ----------- 単位モード -----------
    elsif @event.mode == 'unit'
      @unit = []
      unit_s = @event.gamble.total_amount.to_s.chars
      unit_i = unit_s.map(&:to_i).reverse
      @unit << unit_i.map.with_index { |unit, index| unit * (10**index) }

    # ----------- モードなし -----------
    else
      redirect_to event_rooms_path
    end
  end

  private

  def move_to_signed_in
    redirect_to welcome_path unless user_signed_in?
  end
end
