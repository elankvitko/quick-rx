class NewsController < ApplicationController
  def index
    @tags = Tag.all
    @posts = Post.all
  end

  def show
    @posts = Post.all
    @tags = Tag.all

    if Post.exists?( params[ 'id' ] )
      @post = Post.find( params[ 'id' ] )
      @comments = @post.comments
      @new_comment = Comment.new
    else
      redirect_to root_path
    end
  end
end
