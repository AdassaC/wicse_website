class CollegesController < ApplicationController
  def index
    if params[:query] 
      @colleges = College.where("name like ?", "%#{params[:query].downcase}%")
    else
      @colleges = College.all
    end 
  end
end
