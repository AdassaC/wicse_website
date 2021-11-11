class CoursesController < ApplicationController
  def index
    if params[:query] 
      @courses = Course.where("name like ?", "%#{params[:query].downcase}%")
    else
      @courses = Course.all
    end
  end

  def show
    @course = Course.find(params[:id])
  end
end
