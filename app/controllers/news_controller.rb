class NewsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @posts = Post.all

    if Post.exists?( params[ 'id' ] )
      @post = Post.find( params[ 'id' ] )
      @comments = @post.comments
      @new_comment = Comment.new
    else
      redirect_to root_path
    end
  end
end
