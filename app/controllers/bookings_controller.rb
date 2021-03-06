class BookingsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @booking = Booking.new
    @booking.event = @event
    @booking.user = current_user
    if @booking.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def destroy
    @event = Event.find(params[:event_id])
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to event_path(@event)
  end

  private

  def booking_params
    params.require(:booking).permit(:event_id)
  end
end
