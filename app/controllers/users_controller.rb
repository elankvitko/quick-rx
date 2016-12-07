class UsersController < ApplicationController
  def show
    @todos = Todo.where( user_id: current_user.id )
    if @todos.empty? == false
      @todos = @todos.sort_by { |todo| todo.id }
    end

    @todo = Todo.new
    @day = Day.find_by( day: 'weekday' )
  end
end
