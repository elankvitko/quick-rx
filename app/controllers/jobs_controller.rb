class JobsController < ApplicationController
  def show
    @position = Job.find_by( id: params[ 'job' ][ 'id' ] )

    render partial: 'careers/mail_position', layout: false, locals: { position: @position }
  end

  def sendmail
    
  end
end
