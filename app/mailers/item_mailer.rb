class ItemMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.item_mailer.new_item.subject
  #
  def new_item
    @item = Item.last

    mail to: "ekvitko@qrpgroup.com",
         subject: 'Order Request'
  end
end
