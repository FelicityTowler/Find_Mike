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
    @event.available_spots = @event.available_spots + 1
    @event.booked_spots = @event.booked_spots - 1
    @event.save
    if @event.venue.user == current_user
      redirect_to pages_manage_my_bookings_path
    else
      redirect_to pages_my_bookings_path
    end
  end

  def approve
    @booking = Booking.find(params[:booking_id])
    @event = Event.find(params[:event_id])
    @booking.approved = true
    @booking.performed = true
    @booking.save
    @event.available_spots = @event.available_spots - 1
    @event.booked_spots = @event.booked_spots + 1
    @event.save
    redirect_to pages_manage_my_bookings_path
  end

  def mark_no_show
    @booking = Booking.find(params[:booking_id])
    @event = Event.find(params[:event_id])
    @booking.performed = false
    @booking.save
    redirect_to pages_manage_my_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:event_id)
  end
end
