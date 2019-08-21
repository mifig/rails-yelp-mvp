class ReviewsController < ApplicationController

  before_action :fetch_restaurant_id

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      @review.restaurant = @restaurant
      @review.save
      redirect_to :root
    else
      render :new
    end
  end

  private

  def fetch_restaurant_id
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
