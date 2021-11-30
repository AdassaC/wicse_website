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

  def create
    @college = College.find(params[:college_id])
    @course = @college.courses.new(create_params)

    @course.college_id = @college.id

    if @course.save
      redirect_to @course
    else
      render "new"
    end
  end

  private 
  def create_params
    params.permit(:course_id, :name)
  end

end
