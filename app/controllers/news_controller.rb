class NewsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @posts = Post.all
    @post = Post.find( params[ 'id' ] )
    @comments = @post.comments
    @new_comment = Comment.new
  end
end
