class UsersController < ApplicationController
  def show
    @user = User.find_by( id: params[ 'id' ] )

    if @user == nil && user_signed_in?
      redirect_to user_path( current_user )
    elsif !user_signed_in?
      redirect_to new_user_session_path
    elsif @user.id != current_user.id
      redirect_to user_path( current_user )
    else
      if user_signed_in? && @user.id == current_user.id
        @todos = Todo.where( user_id: current_user.id )
        if @todos.empty? == false
          @todos = @todos.sort_by { |todo| todo.id }
        end

        @todo = Todo.new
        @day = Day.find_by( day: 'weekday' )
        @item = Item.new
        @all_items = Item.all.sort_by { |item| item.id }.reverse
      else
        redirect_to root_path
      end
    end
  end
end
