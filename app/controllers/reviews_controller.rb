class ReviewsController < ApplicationController
  before_action :find_restaurant, except: :destroy

  def new
    @review = Review.new
  end

  def create
    @review = Review
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:text)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
