class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map { | a | [a.name, a.id] }
    @day_options = Flight.all.map { |flight| flight.start_datetime.to_date.day }.uniq
    @month_options = Flight.all.map { |flight| flight.start_datetime.to_date.strftime("%B") }.uniq
    @year_options = Flight.all.map { |flight| flight.start_datetime.to_date.year }.uniq
    @selected_date = [params[:day], params[:month], params[:year]].join(" ").to_date.to_s
    @available_flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], start_datetime: @selected_date)
  end

end
