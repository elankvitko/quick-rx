class TodosController < ApplicationController
  def create
    @todo = Todo.new( todo_params )

    if request.xhr?
      if user_signed_in?
        @todo.save
        render partial: "new_todo_ajax", layout: false, locals: { todo: @todo }
      end
    end
  end

  def update
    @todo = Todo.find_by( id: params[ 'id' ] )

    if @todo.update( todo_params )
      redirect_to user_path( current_user.id )
    end
  end

  def show
    @todo = Todo.find_by_id( params[ 'id' ] )
  end

  private

    def todo_params
      params.require( :todo ).permit( :name, :body, :complete, :user_id )
    end
end
