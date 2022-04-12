class AddNewColumnsToPassengerModel < ActiveRecord::Migration[6.1]
  def change
    add_column(:passengers, :full_name, :string)
    add_column(:passengers, :email, :string)
  end
end
