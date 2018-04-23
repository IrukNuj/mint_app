class LikesController < ApplicationController

  def index
    @all_like_count = Like.all.where(post_id:params[:id]).count
    @likes_list = @all_like_count.all.order()
    @posts = Post.all.order(created_at: :desc) #投稿日早い順にしてます。
    @users = User.all
  end

  def create
    @like = Like.new(
      user_id: current_user.id,
      post_id: params[:post_id]
    )
    @like.save
    redirect_to("/post/#{params[:post_id]}")
  end

  def destroy
    @like = Like.find_by(
      user_id: current_user.id,
      post_id: params[:post_id]
    )
    @like.destroy
    redirect_to("/post/#{params[:post_id]}")
  end

end
