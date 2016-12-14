class PositionMailer < ApplicationMailer
  def new_position( position, body, user )
    @position = position
    @body = body
    @user = user

    attachments.inline[ 'logo.png' ] = File.read( Rails.root.join( "app/assets/images/logo.png" ) )

    mail to: "ekvitko@qrpgroup.com",
         subject: 'New Career Application'
  end
end
