class HomeController < ApplicationController

  def index
  end


  def new
  end

  def create
    @user= users.new()
  end

  def destroy
  end

  def top
#    render :layout => nil
  end

end
