class ContactMailer < ApplicationMailer
  def new_contact( name, email, body )
    @name = name
    @email = email
    @body = body

    attachments.inline[ 'logo.png' ] = File.read( Rails.root.join( "app/assets/images/logo.png" ) )

    mail to: "ekvitko@qrpgroup.com",
         subject: 'Quick RX - New Contact'
  end
end
