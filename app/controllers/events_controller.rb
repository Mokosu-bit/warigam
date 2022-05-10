class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  def index
    @events = current_user.events.all
  end

  def show
    @joined_users = @event.joining_users
  end

  def new
    @event = current_user.events.build
  end
  
  def create
    @event = current_user.events.build(event_params)

    if @event.save
      current_user.join(@event)
      redirect_to event_path(@event), success: 'イベントを作成しました'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event), success: 'イベント内容を更新しました'
    else
      render :new
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, success: 'イベントを削除しました'
  end

  private
    def set_event
      @event = current_user.events.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :mode, :user_id)
    end
end
