class PagesController < ApplicationController
  def home
  end

  def dashboard
  end

  def my_account
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  def my_events
  end

  def manage_my_bookings
    @venue = current_user.venues.first
    @events = @venue.events

  end

end
