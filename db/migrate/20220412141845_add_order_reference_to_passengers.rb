class AddOrderReferenceToPassengers < ActiveRecord::Migration[6.1]
  def change
    add_reference :passengers, :order, foreign_key: true
  end
end
