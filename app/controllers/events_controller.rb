class EventsController < ApplicationController
  def index
    sql_query = "events.date ILIKE :query"

    if params[:query].present?
      @events = Event.where(sql_query, query: "%#{params[:query]}%")
    else
      @events = Event.all
    end
  end
end
