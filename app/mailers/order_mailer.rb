class OrderMailer < ActionMailer::Base
  default from: "sonyk@inbox.ru"

  def order_confrmation order
    @order = order
    mail to: order.user.email, subject: "Your order (##{order.id})"
  end
end