class CareersController < ApplicationController
  def index
    if user_signed_in? && current_user.career_account
      @categories = JobCategory.all
      @category = JobCategory.new
      @job = Job.new
    else
      session[ :career_code ] = true
      redirect_to new_user_registration_path
    end
  end

  def show
    if request.xhr?
      @position = Job.find_by( id: params[ 'position_id' ] )
      @body = params[ 'body' ]
      @current_user = current_user

      UserJob.create( user_id: @current_user.id, job_id: params[ 'position_id' ] )

      PositionMailer.new_position( @position, @body, @current_user ).deliver_now

      render partial: 'success_message_app', layout: false
    end
  end
end
