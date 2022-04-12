class OrdersController < ApplicationController
  def new
    @order = Order.new
    @chosen_flight = Flight.find(params[:flight])
    @passengers_count = params[:passengers_number].to_i
    @passengers_count.times { @order.passengers.new }
  end
end
