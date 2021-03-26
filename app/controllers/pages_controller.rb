class PagesController < ApplicationController
  def home
  end

  def dashboard
  end

  def my_account
  end

  def my_bookings
    @bookings = current_user.bookings
    @approved_bookings = []
    @pending_bookings = []
    @old_bookings = []
    @bookings.each do |booking|
      if booking.approved == false && booking.event.date >= DateTime.now
        @pending_bookings << booking
      elsif booking.approved == true && booking.event.date >= DateTime.now
        @approved_bookings << booking
      elsif booking.approved == true && booking.event.date < DateTime.now
        @old_bookings << booking
      end
    end
  end

  def my_events
  end

  def manage_my_bookings
    @venue = current_user.venues.first
    @events = @venue.events
  end

  def manage_my_events
    @venue = current_user.venues.first
    @events = @venue.events
  end
end
