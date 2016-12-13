class JobCategoriesController < ApplicationController
  def index
    @positions = Job.where( job_category_id: params[ 'job_category' ][ 'id' ] )
    @position = Job.new

    if request.xhr?
      render partial: "careers/addon", layout: false, locals: { positions: @positions, position: @position }
    end
  end
end
