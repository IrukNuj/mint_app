class UsersController < ApplicationController

  def show
    @id = params[:id]
    @user = User.find_by(id:params[:id])
    @posts = Post.all.order(created_at: :desc)
    @likes = Like.all
    #@post = @user.post
    #@user.post
  end

  def index
    @users = User.all.order(created_at: :desc) #投稿日早い順にしてます。
  end
end
