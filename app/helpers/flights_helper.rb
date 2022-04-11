module FlightsHelper
  def flight_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :flight_duration, :start_datetime)
  end
end
