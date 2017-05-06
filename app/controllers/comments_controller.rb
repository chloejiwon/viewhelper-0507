class CommentsController < ApplicationController

  # 댓글을 만드는 액션
  def create
    @comment = Comment.new
    @comment.post_id = params[:post_id]
    @comment.content = params[:content]
    @comment.save

    # 댓글 만들고 전 페이지로 돌아간다!
    redirect_to :back
  end

  def destroy

    # route에서 이름을 정해준 post_id로 게시글을 찾아주고 그 게시글에 달린 댓글들 중
    # id가 일치하는 것을 찾아서 삭제한다!
    @post = Post.find(params[:post_id])
    #@comment = Post.find(params[:post_id]).comments.find(params[:id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to :back
  end
end
