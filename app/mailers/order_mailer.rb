class OrderMailer < ApplicationMailer
  default from: 'Sam Ruby <depot@example.com>'

  def received(order)
    @order = order

    mail( :to => order.email, 
          :subject => 'Pragmatic Store order Confirmation WITH CHANGE!'
    ) do |format|
      format.text
      format.html
    end
  end
 
  def shipped
    @order = order

    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end
end
