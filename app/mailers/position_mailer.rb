class PositionMailer < ApplicationMailer
  def new_position( position, body, user )
    @position = position
    @body = body
    @user = user

    mail to: "ekvitko@qrpgroup.com",
         subject: 'New Career Application'
  end
end
