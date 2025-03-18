class EventsController < ApplicationController

  def index
    if params[:mine].present?
      @events = Current.user.events
    else
      @events = Event.all
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    @event.user = Current.user
    if @event.save
      redirect_to events_path, notice: "Event created successfully!"
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :body)
  end
end
