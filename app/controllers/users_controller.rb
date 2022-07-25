class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id) 
    joined_events = @user.joining_events
    @finished_events = joined_events.where(counts: 1).page(params[:page]).per(5)
  end
end
