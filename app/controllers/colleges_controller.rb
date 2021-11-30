class CollegesController < ApplicationController
  #def index 
    #@college = College.find(params[:id])
  #end

  #def add_reference College 
    #@College.user_id = current_user.id
  #end

  def new
    @college = College.new
  end

  def create
    @college = College.new(create_params)

    if @college.save
      redirect_to @college
    else
      render "new"
    end
  end
  
  def index
      if params[:query] 
        @colleges = College.where("name like ?", "%#{params[:query].downcase}%")
      else
        @colleges = College.all
      end
  end

  def show
    @college = College.find(params[:id])
    #@reviews = @course.reviews
  end

  private 
  def create_params
    params.permit(:name, :state, :city)
  end

end