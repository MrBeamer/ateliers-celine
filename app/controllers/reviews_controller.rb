class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @workshop = Workshop.find(params[:workshop_id])
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @workshop = Workshop.find(params[:workshop_id])
    authorize @review
    @review.user = current_user
    @review.workshop = @workshop
    if @review.save
      redirect_to workshop_path(@workshop, anchor: "reviews_all")
    else
      render :new
    end
  end

  def index
    @reviews = policy_scope(Review).order(created_at: :asc)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
