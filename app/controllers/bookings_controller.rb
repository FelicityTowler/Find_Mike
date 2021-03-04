class BookingsController < ApplicationController

  def new
    @event = Event.find(params[:event_id])
    @booking = Booking.new
  end

  def create
    @event = Event.find(params[:event_id])
    @booking = Booking.new(booking_params)
    @booking.event = @event
    @booking.user = current_user
    if @booking.save
      redirect_to event_booking_path(@event, @booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:event, :user)
  end
end
