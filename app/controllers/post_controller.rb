class PostController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    redirect_to("/post/index")
  end


  def show
    @id = params[:id]
    @post = Post.find_by(id:params[:id])
  end

end
