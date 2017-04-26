class CommentsController < ApplicationController
  respond_to :json

  def index
  	p 111111111111111111
    p respond_with(comments: Comment.all)

  end

  def create
    respond_with Comment.create(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :comment)
  end
end
