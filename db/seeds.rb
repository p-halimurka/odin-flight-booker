# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
airport_new_york = Airport.create(name: "NYC")
airport_barcelona = Airport.create(name: "BRC")
airport_lviv = Airport.create(name: "LV")

flight_form_ny_to_brc = Flight.create(departure_airport_id: 1, arrival_airport_id: 2, start_datetime: 'Fri, 08 Apr 2022 18:17:01 +0300', flight_duration: "5 hours 21 minutes" )
flight_form_lv_to_nyc = Flight.create(departure_airport_id: 3, arrival_airport_id: 1, start_datetime: 'Fri, 08 Apr 2022 18:17:01 +0300', flight_duration: "12 hours 21 minutes" )
flight_form_ny_to_lv = Flight.create(departure_airport_id: 1, arrival_airport_id: 3, start_datetime: '2022-04-08', flight_duration: "12 hours 21 minutes" )