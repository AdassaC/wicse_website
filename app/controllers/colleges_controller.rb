class CollegesController < ApplicationController
  def index
      if params[:query] 
        @colleges = College.where("name like ?", "%#{params[:query].downcase}%")
      else
        @colleges = College.all
      end
  end

  def show
    @college = College.find(params[:id])
    #@courses = @college.courses
  end

end
