class CommentsController < ApplicationController
  def create
    @comment = Comment.new( comment_params )
    @comment.save
    redirect_to news_path( params[ 'comment' ][ 'post_id' ] )
  end

  private

    def comment_params
      params.require( :comment ).permit( :body, :user_id, :post_id )
    end
end
