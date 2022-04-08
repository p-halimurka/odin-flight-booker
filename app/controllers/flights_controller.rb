class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airport_options = Airport.all.map { | a | [a.name, a.id] }
    @date_options = Flight.all.map {| f| f.start_datetime}
  end
end
