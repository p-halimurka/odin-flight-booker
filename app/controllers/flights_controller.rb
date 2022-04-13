class FlightsController < ApplicationController
  include FlightsHelper
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map { | a | [a.name, a.id] }
    @day_options = Flight.all.map { |flight| flight.start_datetime.day }.uniq
    @month_options = Flight.all.map { |flight| flight.start_datetime.month }.uniq
    @year_options = Flight.all.map { |flight| flight.start_datetime.year }.uniq
    if params.has_key?(:day) && params.has_key?(:month) && params.has_key?(:year)
      if params[:departure_airport_id].blank?
        flash.now[:alert] = "Departure airport is missing"
      elsif params[:arrival_airport_id].blank?
        flash.now[:alert] = "Destination airport is missing"
      elsif params[:passengers_number].blank?
        flash.now[:alert] = "Please choose the number of passengers"
      elsif params[:departure_airport_id] == params[:arrival_airport_id]
        flash.now[:alert] = "Please check your input"
      else
        @selected_date = Date.civil(params[:year].to_i, params[:month].to_i, params[:day].to_i)
        @available_flights = Flight.where(departure_airport_id: params[:departure_airport_id], arrival_airport_id: params[:arrival_airport_id], start_datetime: @selected_date.all_day)
      end
    end
  end
end
