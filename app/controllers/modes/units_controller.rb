class Modes::UnitsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    joined_users = event.joining_users
    if event.counts.zero?
      event.update(counts: 1)
      pre_unit = []
      unit_s = event.gamble.total_amount.to_s.chars
      unit_i = unit_s.map(&:to_i).reverse
      pre_unit << unit_i.map.with_index{|unit, index| unit * (10 ** index)}
      event.update(results: joined_users.sample(unit_s.length))
      er = event.results
      er.each_with_index do |event, index|
        event.rooms.last.update(payment: pre_unit[0][index])
      end
      redirect_to event_rooms_path
    else
      redirect_to events_path
    end
  end
end
