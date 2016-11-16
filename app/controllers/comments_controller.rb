class CommentsController < ApplicationController
  def create
    @comment = Comment.new( comment_params )
    if request.xhr?
      if user_signed_in?
        @comment.save
      end
      render partial: "new", layout: false, locals: { comment: @comment }
    else
      redirect_to root_path
    end
  end

  private

    def comment_params
      params.require( :comment ).permit( :body, :user_id, :post_id )
    end
end
