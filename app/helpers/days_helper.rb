module DaysHelper
  def weekday_hours
    @weekday = Day.find_by( day: 'weekday' )
  end
end
