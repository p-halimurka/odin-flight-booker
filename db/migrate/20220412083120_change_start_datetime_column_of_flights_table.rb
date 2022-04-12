class ChangeStartDatetimeColumnOfFlightsTable < ActiveRecord::Migration[6.1]
  def change
    change_column(:flights, :start_datetime, :datetime)
  end
end
