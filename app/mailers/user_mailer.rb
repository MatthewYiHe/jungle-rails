class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def conformation_email(order)
    @order = order
    mail(to: @order.email, subject: "your order is #{@order.id}")
  end
end
