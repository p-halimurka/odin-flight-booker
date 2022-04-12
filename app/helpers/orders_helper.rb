module OrdersHelper
  def order_params
    params.require(:order).permit(:flight_id, passengers_info: [:full_name, :email])
  end
end
