class FooController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index

  end
  def new
  end
  def create
    flash[:success] = "Ia Ia! Chthulu ftagn!"
    render 'index'
  end
  
end
