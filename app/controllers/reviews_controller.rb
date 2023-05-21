class ReviewsController < ApplicationController

  def show
    @bandspace = BandSpace.find(params[:band_space_id])
  end

  def new
    @bandspace = BandSpace.find(params[:band_space_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @bandspace = BandSpace.find(params[:band_space_id])
    @review.band_space = @bandspace
    @review.user = current_user
    if @review.save
      redirect_to band_space_path(@bandspace)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:band_space_id, :user_id, :title, :body, :rating)
  end
end
