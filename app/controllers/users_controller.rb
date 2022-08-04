class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id) 
    joined_events = @user.joining_events
    @finished_events = joined_events.where(counts: 1).order(events: :desc).page(params[:page]).per(5)
    @payment_amount = joined_events.inject(0) { |sum, item| sum + item.rooms.find_by(user_id: @user).payment }
  end
end
