class JoinsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    current_user.join(event)
    redirect_to event, notice: '参加しました'
  end

  def destroy
    event = Event.find(params[:event_id])
    current_user.cancel(event)
    redirect_to event, notice: '参加をキャンセルしました'
  end
end
