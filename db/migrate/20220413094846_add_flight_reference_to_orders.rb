class AddFlightReferenceToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :flight, foreign_key: true
  end
end
