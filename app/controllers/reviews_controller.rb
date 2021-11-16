class ReviewsController < ApplicationController
  def index
  end
  
  def new
    @review = Review.new
  end

  def create
    @course = Course.find(params[:course_id])
    @review = @course.reviews.new(create_params)

    @review.user_id = current_user.id

    if @review.save
      redirect_to @course
    else
      render "new"
    end
  end

  private 
  def create_params
    params.permit(:semester, :summary, :year, :rating, :course_id, :user_id)
  end



end
