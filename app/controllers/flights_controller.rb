class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map { | a | [a.name, a.id] }
    @day_options = Flight.all.map { |flight| flight.start_datetime.to_date.day }
    @month_options = Flight.all.map { |flight| flight.start_datetime.to_date.strftime("%B") }
    @year_options = Flight.all.map { |flight| flight.start_datetime.to_date.year }
    @selected_date = [params[:day], params[:month], params[:year]].join(" ").to_date
    @available_flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], start_datetime: @selected_date)
  end

end
