class ChangeDatetimeColumnOfFlightsTable < ActiveRecord::Migration[6.1]
  def change
    change_column(:flights, :start_datetime, :string)
  end
end
