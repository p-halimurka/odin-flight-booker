class PassengerMailer < ApplicationMailer
  default from: "example@example.com"
  def confirmation_email
    @order = params[:order]
    @url = order_url(@order)
    @flight = @order.flight
    mail(to: @order.passengers.map {|passenger| passenger.email},
          subject: "Flight tickets book confirmation")
  end
end