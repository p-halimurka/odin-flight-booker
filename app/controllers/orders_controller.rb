class OrdersController < ApplicationController
  include OrdersHelper
  def new
    @order = Order.new
    @chosen_flight = Flight.find(params[:flight])
    @passengers_count = params[:passengers_number].to_i
    @passengers_count.times { @order.passengers.build }
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      PassengerMailer.with(order: @order).confirmation_email.deliver_now
      flash[:notice] = "Order successfully made!"
      redirect_to order_path(@order)
    else
      flash[:alert] = 'An error occured!'
      render "new"
    end
  end

  def show
    @order = Order.find(params[:id])
  end

end