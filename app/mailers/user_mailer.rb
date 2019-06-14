class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def conformation_email(order, lineitems)
    @order = order
<<<<<<< HEAD
    mail(to: @order.email, subject: "your order is #{@order.id}")
=======
    @lineitems = lineitems
    mail(to: @order.email, subject: "your order number is ##{@order.id}")
>>>>>>> feature/order-receipt
  end
end
