class EventsController < ApplicationController
  def index
    if params[:query].present?
      @events = Event.where(date: params[:query])
    else
      @events = Event.all
    end
  end
end
