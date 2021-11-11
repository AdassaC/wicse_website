class ReviewsController < ApplicationController
  def index
  end

  def new
    @review = Review.new
    #To create an object, needs POST
  end
  
  def create 
    #logic for creating a new post
  end

end
