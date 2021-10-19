class FindSchoolController < ApplicationController
  def index
  end
  def search
    @schools = School.where("name LIKE ?","%" + params[:q] + "%")
  end

end
