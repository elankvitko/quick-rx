class DaysController < ApplicationController
  def update
    @day = Day.find_by( id: day_params[ :id ] )
    @day.update_attributes( hourbegins: day_params[ :hourbegins ], hourend: day_params[ :hourend ] )
    redirect_to user_path( current_user.id )
  end

  private

    def day_params
      params.require( :day ).permit( :day, :hourbegins, :hourend, :id )
    end
end
