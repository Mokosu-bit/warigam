class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]
  before_action :move_to_signed_in

  def index
    @events = current_user.events.under.order(events: :desc).page(params[:page]).per(5)
  end

  def show
    @joined_users = @event.joining_users.order(rooms: :asc)
    @members = @event.gamble

    respond_to do |format|
      format.html

      format.json { render json: @members }
    end
  end

  def new
    @event = current_user.events.build
    @event.build_gamble
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      current_user.join(@event)
      redirect_to event_path(@event), notice: 'イベントを作成しました'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event), notice: 'イベント内容を更新しました'
    else
      render :new
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, notice: 'イベントを削除しました'
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def move_to_signed_in
    redirect_to welcome_path unless user_signed_in?
  end

  def event_params
    params.require(:event).permit(:title, :mode,
                                  gamble_attributes: %i[total_amount people_number]).merge(user_id: current_user.id)
  end
end
