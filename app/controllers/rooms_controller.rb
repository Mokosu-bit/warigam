class RoomsController < ApplicationController

  def show
    @event = Event.find(params[:event_id])
    @joined_users = @event.joining_users
    
    # ----------- 割振モード -----------
    if @event.mode == "share"

    # ----------- 平等モード -----------
    elsif @event.mode == "equal"
      @equal_amount = @event.gamble.total_amount / @event.gamble.people_number
      @selected_users = @joined_users.sample(@event.gamble.people_number)

    # ----------- 単位モード -----------
    elsif @event.mode == "unit"
      @unit = []
      @selected_users = @joined_users.sample(@unit.length)
      unit_s = @event.gamble.total_amount.to_s.chars
      unit_i = unit_s.map(&:to_i).reverse
      unit_i.each_with_index do |unit, index|
        @unit << 
        if index == 0
          unit * 1
        elsif index == 1
          unit * 10
        elsif index == 2
          unit * 100
        elsif index == 3
          unit * 1000
        elsif index == 4
          unit * 10000
        else
          0
        end
      end

    # ----------- モードなし -----------
    else
      redirect_to event_rooms_path
    end
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
