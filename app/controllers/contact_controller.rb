class ContactController < ApplicationController
  def contact
  end

  def send_email
    if request.xhr?
      ContactMailer.new_contact( params[ 'name' ], params[ 'email' ], params[ 'body' ] ).deliver_now
      render partial: 'contact/success_email_message', layout: false
    end
  end
end
