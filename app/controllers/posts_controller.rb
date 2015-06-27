class PostsController < ApplicationController
  
  def index
    @new_post = Post.new
    @all_posts = Post.order(created_at: :desc).all
  end
  
  def create
    @new_post = Post.create(post_params)
    redirect_to '/'
  end
  
  private
  def post_params
    params.require(:post).permit(:comment)
  end
  

  
end
