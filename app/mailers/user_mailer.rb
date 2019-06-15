class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def conformation_email(order, lineitems)
    @order = order
    @lineitems = lineitems
    mail(to: @order.email, subject: "your order number is ##{@order.id}")
  end
end
