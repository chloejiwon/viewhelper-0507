class PostsController < ApplicationController

  # 모든 게시글들을 보여주는 액션
  def index
    @posts = Post.all
  end

  # 게시글을 새로 만드는 액션
  def create
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    redirect_to :back
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :back
  end
end
