class RatingsController < ApplicationController
  def new
    @review = Rating.new
    @venue = Venue.find(params[:venue_id])
  end

  def create
    @review = Rating.new(review_params)
    @venue = Venue.find(params[:venue_id])
    @review.user = current_user
    @review.venue = @venue
    @review.save
    redirect_to venue_path(@venue)
  end

  private

  def review_params
    params.require(:rating).permit(:performer_experience)
  end
end
