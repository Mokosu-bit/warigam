class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id) 
    joined_events = @user.joining_events
    @finished_events = joined_events.where(counts: 1) 
  end

  def edit; end

  def update
  end

  private
end
