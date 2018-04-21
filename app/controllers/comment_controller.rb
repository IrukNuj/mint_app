class CommentController < ApplicationController

  def create
    @comment = Comment.new(content: params[:content],from_user_id: current_user.id,post_id: params[:post_id]) #textareaのname → paramsに引っ張ってSAVE
    @comment.save

    redirect_to "/post/#{@comment.post_id}"
  end

  def index
    @comments = Comment.all.order(created_at: :desc) #投稿日早い順にしてます。
    @users = User.all
    @posts = Post.all
  end

end
