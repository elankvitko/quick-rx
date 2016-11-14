class CommentsController < ApplicationController
  def create
    @comment = Comment.new( comment_params )
    if user_signed_in?
      @comment.save
      redirect_to news_path( params[ 'comment' ][ 'post_id' ] )
    else
      redirect_to root_path
    end
  end

  private

    def comment_params
      params.require( :comment ).permit( :body, :user_id, :post_id )
    end
end
