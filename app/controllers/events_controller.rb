class EventsController < ApplicationController
  def index
    if params[:query].present? && params[:availability].present?
      @events = Event.where(["date = ? and available_spots > ? and cancelled = ?", params[:query], 0, false])
      @markers = @events.geocoded.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude,
          infoWindow: render_to_string(partial: "infowindow", locals: { event: event }),
          image_url: helpers.asset_url('microphone-alt-solid.svg')
        }
      end
    elsif params[:query].present?
      @events = Event.where(["date = ? and cancelled = ?", params[:query], false])
      @markers = @events.geocoded.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude,
          infoWindow: render_to_string(partial: "infowindow", locals: { event: event }),
          image_url: helpers.asset_url('microphone-alt-solid.svg')
        }
      end
    else
      @events = Event.where(["cancelled = ?", false])
      @markers = @events.geocoded.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude,
          infoWindow: render_to_string(partial: "infowindow", locals: { event: event }),
          image_url: helpers.asset_url('microphone-alt-solid.svg')
        }
      end
    end
  end

  def show
    @event = Event.find(params[:id])
    @booking = Booking.new

    @markers = [{
      lat: @event.latitude,
      lng: @event.longitude,
      infoWindow: render_to_string(partial: "infowindow", locals: { event: @event }),
      image_url: helpers.asset_url('microphone-alt-solid.svg')
    }]
    booking = Booking.find_by(user: current_user, event: @event)
    booking ? @booking = booking : @booking = Booking.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event[:venue_id] = current_user.venues.first.id
    @event[:available_spots] = @event.total_spots
    @event[:address] = current_user.venues.first.address
    @event[:booked_spots] = 0
    @event.save!
    redirect_to event_path(@event)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def cancel
    @event = Event.find(params[:id])
    @event.cancelled = true
    @event.save
    redirect_to event_path(@event)
  end

  private

  def event_params
    params.require(:event).permit(:name, :time, :date, :bringer, :information, :total_spots, :cancelled, :photo, :address)
  end
end
