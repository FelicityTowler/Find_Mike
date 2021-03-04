class EventsController < ApplicationController
  def index
    if params[:query].present? && params[:availability].present?
      @events = Event.where(["date = ? and available_spots > ?", params[:query], 0])
    elsif params[:query].present?
      @events = Event.where(["date = ?", params[:query]])
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])
    @booking = Booking.new
    console
  end
end
