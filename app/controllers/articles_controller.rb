class ArticlesController < ApplicationController
  def index
    @name = Random.rand(11)
  end
end
