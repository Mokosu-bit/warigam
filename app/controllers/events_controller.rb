class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  def index
    @events = Event.all
  end

  def show; end

  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(event_params)

    if @event.save
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
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :mode)
    end
end
