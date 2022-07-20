class Modes::UnitsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    joined_users = event.joining_users
    if event.counts.zero?
      event.update(counts: 1)
      pre_unit = []
      unit_s = event.gamble.total_amount.to_s.chars
      unit_i = unit_s.map(&:to_i).reverse
      unit_i.each_with_index do |unit, index|
        pre_unit <<
          if index == 0
            unit * 1
          elsif index == 1
            unit * 10
          elsif index == 2
            unit * 100
          elsif index == 3
            unit * 1000
          elsif index == 4
            unit * 10_000
          else
            0
          end
      end
      event.update(results: joined_users.sample(pre_unit.length))
      redirect_to event_rooms_path
    else
      redirect_to events_path
    end
  end
end
