class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def show
    @venue = Venue.find(params[:id])
    @has_left_review = current_user.ratings.where(venue: @venue).any?
    @markers = [{
      lat: @venue.latitude,
      lng: @venue.longitude
      # infoWindow: render_to_string(partial: "info_window", locals: { venue: @venue })
    }]
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.update(venue_params)
    redirect_to venue_path(@venue)
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to venues_path
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :postcode, :telephone, :email,
      :website, :user, :verified, :photo)
  end
end
