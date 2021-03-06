class EventsController < ApplicationController
  #test code for finding specific events
  def event_find(location, radius, date)
    #find all events on a certain date
    @events = Event.where(["date = ? and available_spots > ? and cancelled = ?", params[:query], 0, false])
    @locations = []
    @markers = []
    @events.geocoded.each do |event|
      if event.venue.near(location, radius)
        @locations << event
        @markers << {
        lat: event.venue.latitude,
        lng: event.venue.longitude
        }
      end
      @events = @locations
    end
  end

  def index
    if params[:query].present? && params[:availability].present?
      @events = Event.where(["date = ? and available_spots > ? and cancelled = ?", params[:query], 0, false])
    elsif params[:query].present?
      @events = Event.where(["date = ? and cancelled = ?", params[:query], false])
    else
      @events = Event.where(["cancelled = ?", false])
    end
  end

  def show
    @event = Event.find(params[:id])
    @booking = Booking.new
    console
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event[:venue_id] = current_user.venues.first.id
    @event[:available_spots] = @event.total_spots
    @event.save
    redirect_to event_path(@event)
  end

  private

  def event_params
    params.require(:event).permit(:name, :time, :date, :bringer, :information, :total_spots)
  end
end
