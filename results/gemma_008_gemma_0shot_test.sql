SELECT * FROM flights WHERE to_airport = 'DFW' AND departure_airport = 'PHX'
SELECT * FROM flights WHERE to_airport = 'PHX' AND arrival_airport = 'SLC'
SELECT * FROM flights WHERE departure_airport = 'MKE' AND arrival_airport = 'DEN' AND flight_date >= '2023-03-01' AND flight_date <= '2023-03-31'
SELECT airport_code, transport_type, city_code, ground_fare FROM airport WHERE city_code = 'DEN' AND time_zone_code = 'MST'
SELECT * FROM flight WHERE departure_time = 'Tuesday Morning' AND from_airport = 'DENV' AND arrival_airport = 'STL'
SELECT * FROM flight_leg WHERE airport_code = 'STL' AND transport_type = 'GROUND'
SELECT * FROM flights WHERE flight_date = '2023-10-23' AND flight_direction = 'outbound' AND departure_airport = 'STL' AND arrival_airport = 'MKE'
SELECT * FROM flights WHERE to_airport = 'WAAS' AND departure_time >= '2023-10-27 10:00:00' AND departure_time <= '2023-10-27 20:00:00'
SELECT * FROM flights WHERE to_airport = 'ATL' AND arrival_airport = 'SEA'
SELECT * FROM flights WHERE to_airport = 'SAN_DIJO' AND arrival_airport = 'SEA' AND flight_date BETWEEN '2023-10-27' AND '2023-10-30'
SELECT * FROM flights WHERE to_airport = 'PHOENIX' AND arrival_airport = 'DENVER'
SELECT * FROM flights WHERE to_airport = 'SLC' AND from_airport = 'PHX'
SELECT * FROM flights WHERE to_airport = 'PIT' AND from_airport = 'PHX'
SELECT * FROM flights WHERE departure_airport = 'DCA' AND arrival_airport = 'DEN' ```
SELECT * FROM flights WHERE departure_day = 'saturday' AND to_airport = 'bost' ```
SELECT * FROM flights WHERE departure_day = 'saturday' AND to_airport = 'WAAS' AND arrival_airport = 'YYZ' ```
SELECT * FROM flight WHERE departure_date = '2023-10-27' AND to_airport = 'WAI' AND day_name = 'Saturday' AND aircraft_code = '767'
SELECT * FROM flights WHERE flight_date = '2023-06-24' AND departure_airport = 'BOS' AND arrival_airport = 'DCA' AND day_name = 'Saturday'
SELECT * FROM flights WHERE departure_time < '12:00:00' AND flight_id IN ( SELECT flight_id FROM flights WHERE to_airport = 'CLE' AND from_airport = 'DAL' )
SELECT * FROM flight WHERE to_airport = 'WAI' AND arrival_airport = 'BOS' AND flight_days >= 1
SELECT * FROM flight WHERE departure_date = '2023-06-20' AND to_airport = 'WAI' AND flight_day = 'Saturday'
SELECT * FROM flight WHERE to_airport = 'WAI' AND from_airport = 'MTL' ```
SELECT * FROM flight WHERE arrival_day = 'saturday' AND from_airport = 'WAI' AND to_airport = 'MTL'
SELECT * FROM flight WHERE arrival_day = 'saturday' AND to_airport = 'washington' AND from_airport = 'toronto'
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE departure_date = '2023-10-27' AND arrival_date = '2023-10-27' AND to_airport = 'WAI' AND from_airport = 'YYZ'
SELECT * FROM flights WHERE departure_day = 'saturday' AND from_airport = 'WAAS' AND arrival_airport = 'BOS'
SELECT * FROM flights WHERE arrival_day = 'saturday' AND departure_airport = 'BOS' AND destination_airport = 'WAS'
SELECT * FROM flights WHERE to_airport = 'MILW' AND arrival_airport = 'DTW'
SELECT * FROM flights WHERE to_airport = 'MILW' AND arrival_airport = 'DETR'
SELECT * FROM flights WHERE to_airport = 'DET' AND from_airport = 'TOL' AND flight_id IN ( SELECT flight_id FROM flight_legs WHERE flight_id IN ( SELECT flight_id FROM flights WHERE to_airport = 'DET' AND from_airport = 'TOL' ) )
SELECT * FROM flights WHERE to_airport = 'TOR' AND arrival_airport = 'MIL' AND departure_time >= '2023-10-27 12:00:00' AND departure_time <= '2023-10-27 20:00:00'
SELECT * FROM flight WHERE to_airport = 'OAK' AND departure_date = '2023-10-27' AND flight_number = 12345
SELECT * FROM flight WHERE to_airport = 'OAKL' AND arrival_airport = 'SLC' AND flight_date = '2023-10-27'
SELECT * FROM flight WHERE to_airport = 'OAKL' AND departure_date = '2023-10-26' AND flight_number = 812
SELECT * FROM flights WHERE to_airport = 'TOR' AND departure_time >= '2023-10-27 12:00:00' AND arrival_time <= '2023-10-27 22:00:00' AND flight_stop LIKE '%DTW%'
SELECT * FROM flights WHERE to_airport = 'STL' AND from_airport = 'CLT' ```
SELECT * FROM flights WHERE departure_time BETWEEN '2023-10-26 08:00:00' AND '2023-10-26 09:00:00' AND from_airport = 'MILW' AND airline_code = 'DAL'
SELECT * FROM flights WHERE departure_airport = 'MILW' AND departure_time < '08:00:00' ```
SELECT * FROM flight WHERE destination_airport = 'IND' AND time_elapsed >= 60 AND class_of_service = 'economy'
SELECT * FROM flights WHERE departure_airport = 'IND' AND arrival_airport = 'CLE' AND departure_date = '2023-10-27' AND flight_time = '12:00:00'
SELECT * FROM flights WHERE departure_airport = 'CLE' AND arrival_airport = 'MIL' AND flight_date = '2023-10-27' AND departure_time >= 1800
SELECT * FROM flights WHERE departure_airport = 'CLE' AND destination_airport = 'MKE' AND flight_date >= '2023-10-27' AND flight_time >= 1900 AND arrival_time <= 2200
SELECT * FROM flights WHERE departure_airport = 'CLE' AND arrival_airport = 'MIL' AND flight_date = '2023-10-27' AND departure_time >= '19:00:00' ```
SELECT * FROM flights WHERE departure_airport = 'CLE' AND destination_airport = 'MIL' AND flight_date = '2023-10-26' AND departure_time >= '19:00:00' ```
SELECT * FROM flights WHERE departure_date = '2023-10-27' AND from_airport = 'DENV' AND arrival_airport = 'SLC'
SELECT * FROM flight_leg WHERE airport_code = 'DEN' AND transport_type = 'COACH'
SELECT * FROM flights JOIN airlines ON flights.airline_code = airlines.airline_code WHERE flights.departure_time >= '2023-10-26 19:00:00' AND flights.to_airport = 'DENV' AND airlines.city_name = 'SLC'
SELECT * FROM flights WHERE airport_code = 'SLC' AND class_of_service = 'economy'
SELECT * FROM flights WHERE departure_time >= '2023-10-27 19:00:00' AND to_airport = 'SLC' AND departure_airline = 'UA' AND flight_days = 1
SELECT * FROM flights WHERE airport_code = 'PHOENIX' AND time_zone_code = 'MST'
SELECT * FROM flights WHERE departure_time >= '2023-10-27 18:00:00' AND destination_airport = 'SLC' AND day(departure_time) = 3 AND flight_id NOT IN ( SELECT flight_id FROM flight_legs WHERE leg_flight = 12345 -- Replace with actual flight number )
SELECT * FROM flights WHERE flight_day = 'Thursday' AND departure_time < '09:00:00' AND origin_airport = 'OAKN'
SELECT * FROM flights WHERE departure_airport = 'OAK' AND departure_time < '08:00:00' AND flight_stop IN ( 'OAK', 'SLC' )
SELECT flight_id, airline FROM flight WHERE departure_time < '2023-10-27 08:00:00' AND departure_airline = 'OAK' ```
SELECT flight_id FROM flights WHERE departure_time < '8:00:00' AND departure_airport = 'OAKN' AND aircraft_code_sequence = '767' ```
SELECT DISTINCT airport_code, airport_name, airport_location FROM airport WHERE state_code IN ('AZ', 'NV')
SELECT * FROM airports WHERE state IN ('CA', 'NV', 'AZ')
SELECT * FROM airport WHERE city_name = 'Arizona'
SELECT DISTINCT airport_code, airport_name, airport_location FROM airport
SELECT * FROM flights WHERE to_airport = 'LAS' AND from_airport = 'PHO' ```
SELECT DISTINCT airport_code, airport_name, airport_location FROM airport WHERE country_name = 'United States' AND state_code IN ('CA', 'NV')
SELECT DISTINCT a.airport_code, a.airport_name, a.airport_location FROM airport a JOIN airport_service as as ON a.airport_code = as.airport_code ORDER BY a.airport_name
SELECT * FROM flight WHERE flight_day = 'wednesday' AND flight_time BETWEEN 'night' ```
SELECT * FROM flights WHERE departure_time < '06:00:00' AND to_airport = 'OAKL' AND flight_days BETWEEN '2023-10-27' AND '2023-10-28'
SELECT * FROM flights WHERE departure_airline = 'Air Canada' AND arrival_airline = 'Southwest Airlines'
SELECT * FROM flights WHERE departure_time BETWEEN '14:00:00' AND '17:00:00' AND to_airport = 'STL' AND airline = 'Delta'
SELECT * FROM flights WHERE to_airport = 'TPA'
SELECT * FROM flights WHERE to_airport = 'CLE' AND arrival_airport = 'DAL'
SELECT * FROM flight WHERE departure_time < '12:00:00' AND from_airport = 'CLE' AND to_airport = 'DAL'
SELECT * FROM flight WHERE departure_airport = 'CLE' AND arrival_time < '12:00:00' AND aircraft_code IN ( SELECT aircraft_code FROM flight WHERE departure_airport = 'CLE' AND arrival_time < '12:00:00' )
SELECT * FROM flights WHERE to_airport = 'IND' AND arrival_airport = 'SEA' ```
SELECT * FROM flights WHERE to_airport = 'MEMP' AND from_airport = 'SEA' ```
SELECT * FROM flights WHERE to_airport = ' nashville' AND arrival_airport = ' seattle'
SELECT * FROM flights WHERE to_airport = 'nashville' AND from_airport = 'seattle' AND flight_date >= '2023-10-27' AND flight_date <= '2023-10-30'
SELECT * FROM flights WHERE to_airport = 'MILW' AND from_airport = 'TAMPA'
SELECT * FROM flight WHERE to_airport = 'TAMPA' AND flight_days >= 1
SELECT * FROM flight WHERE to_airport = 'STL' AND from_airport = 'MSY' AND date_day = 1 AND flight_id = 12345
SELECT * FROM flights WHERE departure_airport = 'OAK' AND arrival_airport = 'SLC'
SELECT * FROM flights WHERE to_airport = 'TOR' AND arrival_airport = 'SAN' ```
SELECT * FROM flights WHERE to_airport = 'TOR' AND arrival_airport = 'SAN' AND flight_date BETWEEN '2023-04-01' AND '2023-04-30'
SELECT * FROM flights WHERE to_airport = 'TOR' AND departure_time >= '2023-10-27 00:00:00' AND arrival_time <= '2023-10-30 23:59:00'
SELECT * FROM flights WHERE to_airport = 'STL' AND from_airport = 'CLT'
SELECT flight_id FROM flight WHERE departure_airport = 'CLE' AND arrival_airport = 'DAL'
SELECT * FROM flight WHERE to_airport = 'JFK' AND from_airport = 'MIA' ```
SELECT 1
SELECT * FROM flights WHERE to_airport = 'MILW' AND from_airport = 'ORDN' AND round_trip_required = 'YES' AND fare_basis_code = 'economy'
SELECT 1
SELECT * FROM flights WHERE to_airport = 'MILW' AND from_airport = 'ORDN'
SELECT 1
SELECT 1
SELECT 1
SELECT * FROM ents.restriction WHERE application = 'ap' AND restriction_code = '57'
SELECT * FROM flight WHERE airline = 'Delta' AND departure_time < '10:00:00' ```
SELECT * FROM flights WHERE departure_airport = 'BUR' AND arrival_airport = 'SEA' AND arrival_time < '19:00:00'
SELECT * FROM flight WHERE to_airport = 'ORL' AND arrival_airport = 'MTL' AND round_trip_required = 'yes' AND fare_basis_code = 'discounted'
SELECT airline FROM flights WHERE airline_code = 'DL'
SELECT * FROM flights WHERE airline_code = 'DAL' AND departure_city = 'Montreal' AND arrival_city = 'Orlando'
SELECT * FROM flights WHERE to_airport = 'ORD' AND from_airport = 'MTL'
SELECT airline FROM flights WHERE airline_code = 'KQ'
SELECT * FROM flight WHERE departure_city = 'New York' AND arrival_city = 'Miami'
SELECT 1
SELECT * FROM flights WHERE to_airport = 'MIA' AND arrival_airport = 'JFK' AND round_trip_required = 'false' AND fare_basis_code = 'discounted'
SELECT fare_basis_code FROM flights WHERE fare_basis = 'discounted'
SELECT 1
SELECT 1
SELECT fare_basis_code FROM flights WHERE fare_basis = 'discounted'
SELECT * FROM flight WHERE to_airport = 'MKE' AND departure_time >= '18:00:00' AND day_name = 'Wednesday' AND flight_id IN ( SELECT flight_id FROM flight WHERE to_airport = 'MKE' AND departure_time >= '18:00:00' AND day_name = 'Wednesday' AND flight_id NOT IN ( SELECT flight_id FROM flight WHERE to_airport = 'ORD' AND departure_time >= '18:00:00' AND day_name = 'Wednesday' ) )
SELECT * FROM flights WHERE to_airport = 'INDG' AND from_airport = 'MEMP' ```
SELECT * FROM flights WHERE to_airport = 'BUR' AND departure_time BETWEEN '2023-10-27 00:00:00' AND '2023-10-27 23:59:59' AND round_trip_required = 'YES'
SELECT * FROM flights WHERE to_airport = 'ORD' AND departure_time BETWEEN '2023-10-27 08:00:00' AND '2023-10-27 18:00:00' AND round_trip_required = 'yes'
SELECT * FROM flights WHERE to_airport = 'MONTREAL' AND departure_time >= '2023-10-27 00:00:00' AND departure_time < '2023-10-28 00:00:00'
SELECT * FROM flights WHERE to_airport = 'MONTREAL' AND from_airport = 'ORLANDO' AND round_trip_required = 'yes'
SELECT * FROM flights WHERE to_airport = 'MONTREAL' AND arrival_airport = 'ORLANDO'
SELECT * FROM flights WHERE to_airport = 'MONTREAL' AND from_airport = 'ORDL' AND round_trip_required = 'yes' ORDER BY fare_id
SELECT * FROM flights WHERE to_airport = 'ORD' AND from_airport = 'MTL' AND round_trip_required = 'yes' ORDER BY fare_id
SELECT * FROM flight WHERE to_airport = 'KANC' AND departure_time >= '2023-10-27 12:00:00' AND departure_time <= '2023-10-27 20:00:00' AND fare_basis = 'discounted'
SELECT * FROM flights WHERE to_airport = 'KANSAS' AND departure_airport = 'LASV' AND fare_basis = 'discounted' AND class_type = 'economy'
SELECT airline FROM flights WHERE airline_code = 'HP'
SELECT * FROM flight WHERE airport_code = 'LAS' AND time_elapsed > 1800
SELECT * FROM flight_leg WHERE from_airport = 'LAS' AND destination = 'LVS'
SELECT * FROM flight WHERE to_airport = 'LAS' AND arrival_airport = 'BAL' AND fare_basis = 'discounted'
SELECT * FROM flights WHERE to_airport = 'LAS' AND from_airport = 'BAL' AND fare_basis = 'discounted'
SELECT * FROM flight WHERE to_airport = 'BALtimore' AND departure_airport = 'KCLT' AND fare_basis = 'discounted' AND round_trip_required = 'yes' AND class_type = 'economy'
SELECT airline FROM flight WHERE airline_code = 'US'
SELECT airline FROM flights WHERE airline IN ('US')
SELECT airline FROM flights WHERE airline_code = 'US'
SELECT airline FROM flights WHERE airline_code = 'US'
SELECT airline FROM flights WHERE airline_code = 'US'
SELECT * FROM flight WHERE to_airport = 'Columbus' AND departure_time < '10:00:00' ```
SELECT airline FROM flights WHERE airline_code = 'HP'
SELECT * FROM flight WHERE to_airport = 'PETS' AND departure_time >= '2023-10-27 10:00:00' AND departure_time <= '2023-10-27 23:00:00'
SELECT * FROM flight WHERE departure_time BETWEEN '2023-10-27 17:00:00' AND '2023-10-27 22:00:00' AND to_airport = 'MILW' AND flight_id = ( SELECT flight_id FROM flight WHERE to_airport = 'ORDH' AND departure_time BETWEEN '2023-10-27 15:00:00' AND '2023-10-27 21:00:00' )
SELECT * FROM flight WHERE to_airport = 'MILW' AND departure_time <= '10:00:00' AND flight_id IN ( SELECT flight_id FROM flight WHERE from_airport = 'MILW' AND arrival_time >= '10:00:00' )
SELECT airline FROM flights WHERE airline_code = 'YX'
SELECT * FROM flights WHERE to_airport = 'SJC' AND from_airport = 'PHO'
SELECT * FROM flights WHERE to_airport = 'SJC' AND arrival_airport = 'PHO'
SELECT airline FROM flights WHERE airline_code = 'HP'
SELECT * FROM airport_service WHERE city_code = 'PHOENIX' AND transport_type = 'BUS'
SELECT * FROM flights WHERE to_airport = 'PHOENIX' AND from_airport = 'FTW' ```
SELECT * FROM airport_service WHERE city_code = 'FWT' AND transport_type = 'BUS'
SELECT * FROM flights WHERE to_airport = 'DFW' AND arrival_airport = 'SJC'
SELECT * FROM flights WHERE class_of_service = 'first_class' AND from_airport = 'NYC' AND arrival_airport = 'MIA'
SELECT * FROM flights WHERE class_of_service = 'First Class' AND departure_airport = 'JFK' AND arrival_airport = 'MIA'
SELECT * FROM flights WHERE departure_city = 'New York' AND arrival_city = 'Miami' AND round_trip_required = 'true' AND flight_days = 1
SELECT * FROM flights WHERE to_airport = 'MIA' AND departure_time >= '2023-01-01' AND departure_time <= '2023-12-31' AND flight_duration = 1
SELECT * FROM flight WHERE departure_time < '2023-10-01 10:00:00' AND from_airport = 'INDG' AND arrival_airport = 'MEMP'
SELECT 1
SELECT * FROM flights WHERE to_airport = 'BUR' AND arrival_airport = 'TAC' AND round_trip_required = 'true' ```
SELECT 1
SELECT 1
SELECT airline FROM flights WHERE airline LIKE '%[Airline Name]%'
SELECT airline FROM flights WHERE airline_code = 'XXXX'
SELECT airline FROM flights WHERE airline_name LIKE '%[airline]%'
SELECT airline FROM flights WHERE airline LIKE '%s%'
SELECT * FROM flights WHERE departure_airport = 'STL' AND arrival_airport = 'YYZ' AND stopovers = 0 AND maximum_stay = 96
SELECT * FROM flights WHERE to_airport = 'TOR' AND departure_time >= '2023-10-27 00:00:00' AND departure_time <= '2023-10-27 23:59:59'
SELECT * FROM flights WHERE stopovers = 0 AND departure_airline = 'YYZ' AND arrival_airline = 'STL' AND flight_duration = 0
SELECT * FROM flights WHERE stopovers = 0 AND departure_airline = 'YYZ' AND arrival_airline = 'STL' AND flight_duration > 12
SELECT airline FROM flights WHERE airline_code = 'HP'
SELECT * FROM flights WHERE to_airport = 'ORD' AND arrival_airport = 'SAN' AND departure_date BETWEEN '2023-10-27' AND '2023-10-30'
SELECT * FROM flights WHERE to_airport = 'CHGO' AND arrival_airport = 'SAN' AND departure_time BETWEEN '2023-10-27 00:00:00' AND '2023-10-27 23:59:59'
SELECT * FROM flights WHERE to_airport = 'Kansas City International Airport (MCI)' AND arrival_airport = 'Denver International Airport (DEN)'
SELECT * FROM flights WHERE to_airport = 'DENV' AND from_airport = 'PHO' AND date_day BETWEEN '2023-10-27' AND date_day BETWEEN '2023-10-30'
SELECT * FROM flights WHERE to_airport = 'PHOENIX' AND arrival_airport = 'LAS VEGAS'
SELECT * FROM flights WHERE to_airport = 'LAS' AND arrival_airport = 'SAN' ```
SELECT * FROM flight WHERE departure_time BETWEEN '08:00:00' AND '12:00:00' AND to_airport = 'ORD' AND flight_days = '01' AND aircraft_code = '767'
SELECT * FROM flights WHERE to_airport = 'HOUSTON' AND arrival_airport = 'SAN_JOSE'
SELECT * FROM flights WHERE to_airport = 'HOU' AND arrival_airport = 'MIL' AND flight_date BETWEEN '2023-10-27' AND '2023-10-30'
SELECT * FROM flights WHERE flight_date = '2023-10-27' AND from_airport = 'MSN' AND destination = 'SJC' AND day_name = 'Wednesday'
SELECT * FROM flights WHERE flight_date = '2023-05-22' AND departure_airport = 'SJC' AND arrival_airport = 'DAL'
SELECT * FROM flights WHERE to_airport = 'DALLAS' AND arrival_airport = 'HOUSTON'
SELECT * FROM flight WHERE to_airport = 'JFK' AND arrival_airport = 'NYC' AND distance > 500
SELECT * FROM airport WHERE city_name = 'New York'
SELECT DISTINCT airport_code, airport_name, airport_location FROM airport WHERE city_name = 'New York'
SELECT DISTINCT a.airport_code, a.airport_name, a.airport_location FROM airport a WHERE a.city_name = 'Los Angeles'
SELECT DISTINCT airport_code, airport_name, airport_location FROM airport
SELECT * FROM airport WHERE city_name = 'Los Angeles' ```
SELECT DISTINCT airport_code, airport_name, airport_location FROM airport WHERE city_code = 'LA'
SELECT DISTINCT a.airport_code, a.airport_name, a.airport_location FROM airports a JOIN flight_stops fs ON a.airport_code = fs.from_airport
SELECT * FROM flights
SELECT * FROM flights
SELECT * FROM flights WHERE to_airport = 'JFK' AND departure_time >= '2023-10-27 10:00:00' AND departure_time <= '2023-10-27 20:00:00'
SELECT * FROM flights WHERE to_airport = 'LGD' AND departure_airport = 'BUR' AND flight_days >= 1
SELECT * FROM flights WHERE to_airport = 'LAX' AND departure_time >= '2023-10-27 00:00:00' AND departure_time <= '2023-10-27 23:59:00'
SELECT * FROM flights WHERE to_airport = 'ONTario, CA' AND arrival_airport = 'Orlando, FL'
SELECT * FROM flights WHERE to_airport = 'ONTARIO' AND from_airport = 'CALIFORNIA' AND flight_days BETWEEN 1 AND 7
SELECT * FROM flight WHERE departure_city = 'Indianapolis' AND arrival_city = 'Memphis' AND date_day = 'Monday' AND fare_basis = 'discounted'
SELECT * FROM flights WHERE departure_airport = 'IND' AND arrival_airport = 'MEM' AND day(date_day) = 1 AND time_interval = 'morning'
SELECT * FROM flights WHERE to_airport = 'MEMP' AND departure_date = '2023-10-27' AND flight_day = 'WEDNESDAY'
SELECT * FROM flights WHERE departure_day = 'Sunday' AND to_airport = 'MIA' AND arrival_airport = 'IND'
SELECT * FROM flights WHERE departure_day = 'saturday' AND departure_time BETWEEN '17:00:00' AND arrival_time BETWEEN '19:00:00'
SELECT * FROM flights JOIN aircraft ON flights.aircraft_code = aircraft.aircraft_code
SELECT fare_basis.class_of_service FROM fare_basis WHERE fare_basis_code = 'Q'
SELECT * FROM flights WHERE flight_date = '2023-06-24' AND flight_stop IN ('ORL', 'TAC') AND fare_basis_code = 'q'
SELECT * FROM flight WHERE to_airport = 'DET' AND class_type = 'FIRST_CLASS' AND round_trip_required = 'YES' ```
SELECT * FROM flight WHERE to_airport = 'DET' AND departure_time >= '2023-10-27 00:00:00' AND arrival_time <= '2023-10-27 23:59:00'
SELECT * FROM flights WHERE departure_time = '2023-10-27 08:00:00' AND to_airport = 'PIT' AND aircraft_code = '767'
SELECT * FROM flights WHERE flight_date = '2023-10-27' AND departure_airport = 'MSP' AND arrival_airport = 'PIT' AND day_name = 'Friday'
SELECT * FROM flights WHERE departure_time < '9:00:00' AND from_airport = 'cincinnati' AND to_airport = 'tampa'
SELECT * FROM flights WHERE departure_time <= '12:00:00' AND from_airport = 'CINcinnati' AND to_airport = 'TAMPA'
SELECT * FROM flights WHERE departure_time >= '15:00:00' AND to_airport = 'TAMPA' AND arrival_airport = 'CINcinnati'
SELECT DISTINCT airline FROM flights WHERE departure_airport = 'SEA' AND arrival_airport = 'SLC'
SELECT * FROM flights WHERE flight_id IN ( SELECT flight_id FROM flights WHERE departure_airport = 'SEA' AND arrival_airport = 'SLC' AND departure_date >= '2023-10-27' AND departure_date <= '2023-10-30' )
SELECT compartment FROM flights WHERE departure_airport = 'SEA' AND arrival_airport = 'SLC' AND airline = 'Delta'
SELECT * FROM flights WHERE flight_from = 'SEA' AND flight_to = 'SLC' AND aircraft_type = 'Airbus A320'
SELECT * FROM airport_service WHERE city_code = 'BAL' AND transport_type = 'BUS'
SELECT * FROM airport_service WHERE city_code = 'BAL' AND transport_type = 'BUS'
SELECT * FROM flights WHERE departure_airport = 'BAL' AND arrival_airport = 'SFO' AND day = 'friday' ```
SELECT * FROM flights WHERE departure_city = 'Los Angeles' AND arrival_city = 'Pittsburgh' AND day = 'Tuesday'
SELECT * FROM flights WHERE to_airport = 'PIT' AND departure_date = '2023-10-27' AND flight_day = 'Thursday' AND flight_time BETWEEN '18:00:00' AND '22:00:00'
SELECT * FROM flight WHERE departure_date = '2023-10-25' AND to_airport = 'CLE' AND flight_day = 'Wed' AND round_trip_required = 'YES' ```
SELECT * FROM flight WHERE to_airport = 'CLE' AND arrival_date = '2023-10-27' AND flight_basis = 'discounted'
SELECT * FROM flights JOIN flight_legs ON flights.flight_id = flight_legs.flight_id WHERE departure_airport = 'MIA' AND arrival_airport = 'CLE' AND day = 'WEDNESDAY' ```
SELECT * FROM flight WHERE to_airport = 'MIA' AND from_airport = 'CLE' AND arrival_day = '2023-10-27' AND day_number = 1 AND flight_id IN ( SELECT flight_id FROM flight WHERE to_airport = 'MIA' AND from_airport = 'CLE' AND arrival_day = '2023-10-27' AND day_number = 1 AND restriction_code = 'no_discounts' )
SELECT * FROM flights WHERE departure_date = '2023-06-06' AND airline_code = 'AA' AND flight_day IN ('Sat', 'Sun') ```
SELECT * FROM flight WHERE to_airport = 'PHOENIX' AND departure_time = '2023-10-27 19:00:00' AND flight_day = ' wednesday' AND flight_direction = 'outbound' ```
SELECT * FROM flights WHERE departure_airport = 'PHX' AND arrival_airport = 'MKE' AND date_day = 'Wed' AND airline = 'American Airlines'
SELECT * FROM flights WHERE departure_airport = 'PHX' AND arrival_airport = 'MKE' AND airline_code = 'AA'
SELECT * FROM flights WHERE to_airport = 'PHX' AND from_airport = 'MIL' ```
SELECT * FROM flight WHERE departure_time < '2023-06-07 07:00:00' AND to_airport = 'ORD' AND flight_stop = 'ORD' AND meal_code = 'MEAL1'
SELECT * FROM flights WHERE departure_time = 'Saturday Morning' AND flight_stop IN ('Chicago', 'Seattle') AND food_service IS NOT NULL
SELECT * FROM flight WHERE to_airport = 'SEA' AND departure_airline = 'CLT' AND food_service LIKE '%continental%'
SELECT * FROM flights WHERE departure_airport = 'SEA' AND arrival_airport = 'CHI' AND flight_day = 'Saturday' AND meal_code IN ('Continental') ```
SELECT * FROM flights WHERE to_airport = 'ORD' AND departure_time BETWEEN '06:00:00' AND '10:00:00' AND flight_stop IN ( 'ORD', 'SEA' ) AND meal_code IN ('MEAL1', 'MEAL2', 'MEAL3')
SELECT * FROM flights WHERE departure_airport = 'ORD' AND arrival_airport = 'SEA' AND day(departure_time) = 6 AND meal_code IN ('MEAL1', 'MEAL2') ```
SELECT * FROM flights WHERE flight_day = 'Saturday' AND departure_city = 'Chicago' AND meal_code IN ('MKT', 'SEA', 'ORD') ORDER BY departure_time
SELECT * FROM flight WHERE departure_day = 'saturday' AND departure_time BETWEEN '08:00:00' AND '12:00:00' AND flight_stop IN ( SELECT stop_number FROM flight_stop WHERE stop_day = 'stop_days' AND stop_airport = 'ORD' ) AND food_service LIKE '%chicago%' AND class_of_service = 'business'
SELECT * FROM flight WHERE flight_day = 6 AND departure_airline = 'Continental Airlines' AND meal_code IS NOT NULL
SELECT * FROM flights WHERE departure_airport = 'JFK' AND arrival_airport = 'LAS' AND no_discounts = 0 AND minimum_stay = 7
SELECT * FROM flights WHERE to_airport = 'MEMPH' AND arrival_airport = 'LASV' AND restriction_code = 'no_discounts' AND maximum_stay = 7
SELECT * FROM flights WHERE flight_date = '2023-10-26' AND departure_airport = 'JFK' AND arrival_airport = 'TPA'
SELECT * FROM flights WHERE flight_day = 'Sunday' AND from_airport = 'TAMPA' AND arrival_airport = 'CLT'
SELECT * FROM flight WHERE to_airport = 'CHARLOTTE' AND from_airport = 'BALtimore' AND day_name = 'tuesday' AND aircraft_code = '767'
SELECT * FROM flight WHERE to_airport = 'BALR' AND departure_time BETWEEN '07:00:00' AND '10:00:00' AND airline = 'AA'
SELECT * FROM flight WHERE flight_id = '12345' ```
SELECT * FROM flight WHERE to_airport = 'HOUSTON' AND from_airport = 'DALAS'
SELECT * FROM flights WHERE flight_date = '2023-10-27' AND to_airport = 'MSP' AND airline = 'AMERICAN' AND stopovers = 'no_discounts' AND maximum_stay = 7
SELECT flight_id, departure_time FROM flight WHERE airline_code = 'AA' AND departure_city = 'PHOENIX' AND arrival_city = 'MILWAUKEE'
SELECT flight_id, fare_id FROM flight WHERE to_airport = 'CHGO' AND arrival_airport = 'SEA' AND flight_date >= '2023-04-01' AND flight_date <= '2023-04-30'
SELECT flight_id, fare_id FROM flight WHERE to_airport = 'ORD' AND departure_time >= '2023-10-27 12:00:00' AND departure_time <= '2023-10-27 16:00:00' ```
SELECT flight_id, to_airport, airline_flight, flight_days, connections FROM flight WHERE to_airport = 'SEA' AND departure_city = 'CHI' AND flight_number IN ( SELECT flight_id FROM flight WHERE departure_city = 'SEA' AND destination_city = 'CHI' )
SELECT * FROM flight WHERE to_airport = 'PIT' AND arrival_airport = 'CLE' AND fare_basis = 'discounted' AND fare_id < 200
SELECT fare.to_airport, fare.fare_id FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE flight.from_airport = 'PIT' AND flight.to_airport = 'ATL' AND fare.restriction_code = 'NO_DISCOUNTS'
SELECT * FROM flight WHERE to_airport = 'NEWARK' AND arrival_airport = 'TAMPA' AND flight_date = '2023-10-27'
SELECT * FROM flight WHERE to_airport = 'tampa' AND arrival_day = 'sunday' AND flight_id = ( SELECT flight_id FROM flight WHERE to_airport = 'tampa' AND arrival_day = 'sunday' AND departure_airline = 'Delta' )
SELECT * FROM flight WHERE to_airport = 'charlotte' AND arrival_date = 'tuesday' ```
SELECT * FROM flights WHERE to_airport = 'BAL' AND departure_date = '2023-10-27' AND flight_direction = 'W' ```
SELECT * FROM flight WHERE departure_time >= '2023-12-12 12:00:00' AND to_airport = 'DALLAS' AND flight_id = ( SELECT flight_id FROM flight WHERE departure_time >= '2023-12-12 12:00:00' AND to_airport = 'HOUSTON' )
SELECT * FROM flights WHERE flight_id IN ( SELECT flight_id FROM flight_legs WHERE flight_id IN ( SELECT flight_id FROM flight_stops WHERE departure_time <= '23:59:00' AND arrival_time >= '00:00:00' ) AND departure_airport = 'HOU' AND arrival_airport = 'DAL' ) ```
SELECT * FROM flights WHERE to_airport = 'IND' AND arrival_time >= '2023-12-27 00:00:00' AND arrival_time <= '2023-12-27 23:59:59'
SELECT * FROM flight WHERE flight_id IN ( SELECT flight_id FROM flight WHERE to_airport = 'CLEVELAND' AND arrival_time <= '2023-10-27 16:00:00' ) AND flight_days = 'WEDNESDAY' AND flight.from_airport = 'MIA' ```
SELECT * FROM flights WHERE to_airport = 'MIA' AND arrival_day = 'SAT' AND flight_id = ( SELECT flight_id FROM flights WHERE to_airport = 'MIA' AND arrival_day = 'SUN' AND departure_time >= '17:00:00' AND departure_time <= '19:00:00' )
SELECT * FROM flight WHERE to_airport = 'NEW_YORK' AND arrival_airport = 'LAS_VEGAS' AND flight_day = 'SUNDAY' ```
SELECT * FROM flights WHERE flight_date = '2023-10-27' AND to_airport = 'NYC' AND from_airport = 'LAS' AND day_name = 'Sunday'
SELECT * FROM flight WHERE to_airport = 'NYC' AND arrival_day = 'SUNDAY' AND flight_id IN ( SELECT flight_id FROM flight WHERE departure_day = 'SATURDAY' AND departure_airline = 'EVS' )
SELECT * FROM flight WHERE to_airport = 'MEMPH' AND arrival_time = 'SUNDAY' AND flight_id IN ( SELECT flight_id FROM flight WHERE flight_days BETWEEN 7 AND 14 AND departure_airline = 'MSP' )
SELECT * FROM flight WHERE flight_id IN ( SELECT flight_id FROM flight WHERE to_airport = 'NEW_YORK' AND arrival_day = 'SUNDAY' AND arrival_time BETWEEN '17:00:00' AND '19:00:00' )
SELECT * FROM flight WHERE to_airport = 'chicago' AND arrival_time = 'saturday' AND flight_day = 'morning'
SELECT * FROM flights WHERE departure_airport = 'CHI' AND arrival_airport = 'LAS' AND day = 'saturday' AND time_elapsed BETWEEN '08:00:00' AND '12:00:00'
SELECT * FROM flight WHERE to_airport = 'PIT' AND arrival_time = '2023-10-27 19:00:00' AND flight_id IN ( SELECT flight_id FROM flight WHERE to_airport = 'PIT' AND flight_days BETWEEN '2023-10-23' AND '2023-10-27' )
SELECT * FROM flight WHERE to_airport = 'MILW' AND arrival_date = '2023-10-27' AND flight_id IN ( SELECT flight_id FROM flight WHERE to_airport = 'PHOENIX' AND departure_date = '2023-10-27' )
SELECT * FROM flight WHERE to_airport = 'phoenix' AND arrival_date = '2023-10-27' AND flight_day = 7
SELECT * FROM flight WHERE to_airport = 'phoenix' AND departure_date = '2023-10-27' AND flight_id = ( SELECT flight_id FROM flight WHERE to_airport = 'phoenix' AND departure_date = '2023-10-27' AND flight_number = 12345 )
SELECT * FROM flights WHERE to_airport = 'BALMD' AND arrival_time BETWEEN '2023-10-27 17:00:00' AND '2023-10-27 20:00:00' ```
SELECT * FROM flights WHERE departure_city = 'St. Paul' AND to_airport = 'NW'
SELECT COUNT(*) FROM flights WHERE to_airport = 'DEN' AND month_number = 10 AND day_number BETWEEN 15 AND 21 AND flight_id IN ( SELECT flight_id FROM flights WHERE to_airport = 'ORD' AND month_number = 10 AND day_number BETWEEN 15 AND 21 )
SELECT COUNT(*) FROM flights WHERE departure_airport = 'DUW' AND flight_date BETWEEN '2023-10-20' AND '2023-10-30'
SELECT city_name, country_name, state_code, time_zone_code FROM city WHERE airline_code = 'NW' ```
SELECT city_name, country_name, state_code, time_zone_code, city_code FROM city WHERE airline_code = 'NW'
SELECT city FROM flight WHERE to_airport = 'NWK' OR from_airport = 'NWK'
SELECT * FROM flight WHERE to_airport = 'DFW' AND arrival_time > '16:00:00' ```
SELECT * FROM flights WHERE departure_airport = 'DFW' AND arrival_airport = 'SFO'
SELECT * FROM flight WHERE departure_airline = 'AA' AND departure_time BETWEEN '07:00:00' AND '11:00:00'
SELECT * FROM flight WHERE departure_airport = 'PHL' AND arrival_airport = 'DFW'
SELECT * FROM ent WHERE code_description LIKE '%D9S%'
SELECT * FROM flight WHERE aircraft_code = 'D9S'
SELECT * FROM flights WHERE to_airport = 'D9S'
SELECT DISTINCT airport_code, airport_name, airport_location FROM airport WHERE airport_code IN ( SELECT airport_code FROM flight WHERE airline = 'Tower Air' )
SELECT * FROM flight WHERE class_type = 'first_class' AND from_airport = 'JFK' AND to_airport = 'ORD'
SELECT * FROM flight WHERE class_of_service = 'first_class' AND from_airport = 'KENNEDY' AND to_airport = 'MIA' ORDER BY departure_time
SELECT * FROM flight WHERE class_type = 'first_class' AND from_airport = 'JFK' AND to_airport = 'MIA'
SELECT * FROM flight_fare WHERE meal_code = 'MEAL_CODE_FOR_TOWER_AIR'
SELECT * FROM flight_fare WHERE to_airport = 'TOWER AIR' AND restriction_code = 'NO_DISCOUNTS'
SELECT * FROM flights WHERE departure_airport = 'JFK' AND arrival_airport = 'MIA'
SELECT * FROM flights WHERE departure_airport = 'BOS' AND arrival_airport = 'SLC'
SELECT * FROM flights WHERE to_airport = 'BOS' AND departure_time >= '2023-03-01 10:00:00' AND departure_time <= '2023-03-31 23:59:00'
SELECT * FROM flights WHERE to_airport = 'BOS' AND departure_time >= '2023-10-27 10:00:00' AND departure_time <= '2023-10-27 20:00:00' AND airline_code = 'DAL'
SELECT * FROM flight WHERE to_airport = 'BOS' AND arrival_airport = 'DCA'
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'BOS' AND from_airport = 'SLC' AND flight_basis = 'discounted'
SELECT flight.flight_id, fare.fare_id, fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE flight.from_airport = 'WAAS' AND fare.restriction_code = 'no_discounts' AND fare.round_trip_required = 'true' AND fare.from_airport = 'SLC' AND fare.date_day >= '2023-10-27' AND fare.date_day <= '2023-10-30'
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'BWI' AND from_airport = 'SLC' ORDER BY round_trip_cost ASC
SELECT fare.to_airport, fare.fare_id, fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE flight.from_airport = 'DET' AND flight.to_airport = 'LAS' AND fare.class_type = 'FIRST_CLASS'
SELECT * FROM flights WHERE departure_airport = 'BOS' AND arrival_airport = 'DCA' AND time_elapsed = ( SELECT MIN(time_elapsed) FROM flights WHERE departure_airport = 'BOS' AND arrival_airport = 'DCA' )
SELECT flight.flight_id, flight.departure_time FROM flight JOIN flight_stop ON flight.flight_id = flight_stop.flight_id WHERE flight.from_airport = 'BOS' AND flight.to_airport = 'DCA' AND flight.departure_time = ( SELECT MIN(departure_time) FROM flight JOIN flight_stop ON flight.flight_id = flight_stop.flight_id WHERE from_airport = 'BOS' AND to_airport = 'DCA' ) ORDER BY flight.departure_time
SELECT flight.flight_id, flight.arrival_time FROM flight WHERE departure_airport = 'BOS' AND arrival_airport = 'DCA' ORDER BY flight.arrival_time ASC
SELECT flight.* FROM flights WHERE departure_time = ( SELECT MIN(departure_time) FROM flights WHERE departure_airport = 'HOU' AND arrival_airport = 'ORD' )
SELECT * FROM flight WHERE departure_airport = 'HOU' AND arrival_airport = 'ORD' ORDER BY arrival_time ASC
SELECT * FROM flights WHERE to_airport = 'HOU' AND from_airport = 'ORD'
SELECT * FROM flights WHERE to_airport = 'HOU' AND from_airport = 'ORD' ```
SELECT * FROM flights WHERE to_airport = 'HOU' AND from_airport = 'ORD'
SELECT * FROM flights WHERE departure_time BETWEEN '2023-08-20 20:00:00' AND '2023-08-20 21:00:00'
SELECT compartment FROM flight_stop WHERE aircraft_code = '733' AND stop_days = '2'
SELECT compartment.capacity FROM flights JOIN flight_legs ON flights.flight_id = flight_legs.flight_id JOIN compartments ON flight_legs.compartment_id = compartments.compartment_id WHERE aircraft_code = '72s'
SELECT compartment.capacity FROM flight_leg JOIN aircraft ON flight_leg.aircraft_code = aircraft.aircraft_code WHERE aircraft.aircraft_code = '72s'
SELECT aircraft.capacity FROM aircraft WHERE aircraft.aircraft_code = 'm80'
SELECT compartment.capacity FROM flight_leg JOIN aircraft ON flight_leg.aircraft_code = aircraft.aircraft_code WHERE aircraft.aircraft_code = 'm80'
SELECT compartment.capacity FROM flight_leg JOIN compartment ON flight_leg.flight_id = compartment.flight_id WHERE aircraft_code = 'M80'
SELECT DISTINCT a.airline_name FROM flights f INNER JOIN airline a ON f.airline_code = a.airline_code WHERE f.from_airport = 'DEN' ```
SELECT DISTINCT a.airline FROM flights f JOIN airlines a ON f.airline_code = a.airline_code WHERE f.to_airport = 'DEN' OR f.from_airport = 'DEN'
SELECT * FROM flight WHERE departure_airline = 'DAL' OR arrival_airline = 'DAL'
SELECT * FROM flights WHERE arrival_time BETWEEN '2023-08-20 18:00:00' AND '2023-08-20 21:00:00'
SELECT capacity FROM aircraft WHERE aircraft_code = '73S'
SELECT * FROM flights WHERE flight_id = 73s
SELECT compartment FROM flights WHERE aircraft_code = '73s'
SELECT compartment_class FROM flights WHERE aircraft_code = '757' AND flight_id = ( SELECT flight_id FROM flights WHERE aircraft_code = '757' AND flight_days = '2023-10-27' )
SELECT COUNT(*) FROM flights WHERE aircraft_code = '757'
SELECT * FROM flights WHERE aircraft_code = '757' AND passengers > 500
SELECT * FROM flight WHERE arrival_time BETWEEN '2023-10-27 8:00:00' AND '2023-10-27 9:00:00'
SELECT * FROM flight WHERE arrival_time BETWEEN '2023-08-25 18:00:00' AND '2023-08-25 21:00:00' AND to_airport = 'DENVER'
SELECT * FROM flight WHERE arrival_time BETWEEN '2023-10-27 20:00:00' AND '2023-10-27 21:00:00' AND departure_airport = 'DEN'
SELECT compartment FROM flights WHERE aircraft_code = '757'
SELECT * FROM aircraft WHERE aircraft_code = 'M80'
SELECT * FROM flight WHERE aircraft_code = 'M80'
SELECT * FROM flight WHERE aircraft_code = 'M80'
SELECT compartment FROM flights WHERE aircraft_code = '733'
SELECT aircraft.capacity FROM aircraft WHERE aircraft.aircraft_code = 'M80'
SELECT compartment FROM flight_stop WHERE aircraft_code = 'M80' AND stop_days = 1
SELECT * FROM flight WHERE departure_time BETWEEN '2023-04-20 18:00:00' AND '2023-04-20 21:00:00' AND arrival_time BETWEEN '2023-04-20 18:00:00' AND '2023-04-20 21:00:00'
SELECT * FROM flight WHERE arrival_time BETWEEN '2023-08-20 18:00:00' AND '2023-08-20 21:00:00'
SELECT * FROM flight WHERE aircraft_code IN ( SELECT aircraft_code FROM aircraft WHERE manufacturer LIKE '%Boeing%' ) AND arrival_time BETWEEN '18:00:00' AND '21:00:00'
SELECT * FROM flight WHERE departure_time = '2023-10-27 08:00:00' AND to_airport = 'MSP' AND day_name = 'Monday' AND aircraft_code = '737'
SELECT * FROM flights WHERE departure_time = '2023-10-27 08:00:00' AND from_airport = 'MSN' AND aircraft_code = '737-800'
SELECT * FROM flight WHERE arrival_time >= '08:00:00' AND departure_airport = 'MEMP' AND EXISTS ( SELECT 1 FROM airport_service WHERE airport_code = 'MEMP' AND time_elapsed BETWEEN '08:00:00' AND '12:00:00' )
SELECT * FROM flights WHERE flight_day = 'monday' AND flight_time = 'night' AND to_airport = 'memphis' AND from_airport = 'new_york_city'
SELECT * FROM `ents`.`flight` WHERE `cvg` IS TRUE
SELECT * FROM flight_leg WHERE departure_airport = 'LGD' AND arrival_airport = 'NYC' AND flight_id = ( SELECT flight_id FROM flight WHERE to_airport = 'LGD' AND arrival_airport = 'NYC' AND flight_date >= '2023-04-01' AND flight_date <= '2023-04-30' )
SELECT * FROM flights WHERE airport_code IN ('LGA', 'NYC') AND class_of_service = 'economy'
SELECT airport_code, transport_type, city_code, ground_fare FROM airport WHERE airport_code = 'LGA' AND destination_airport = 'JFK'
SELECT * FROM flight JOIN airport ON flight.from_airport = airport.airport_code WHERE destination_airport = 'NYC' AND arrival_time >= '2023-10-27 10:00:00' AND class_of_service = 'economy'
SELECT * FROM flights WHERE date_day = 1 AND city = 'Memphis' AND arrival_time BETWEEN '09:00:00' AND '13:00:00'
SELECT * FROM flight WHERE departure_time > '2023-10-27 19:00:00' AND to_airport = 'JFK' AND day_name = 'Wednesday'
SELECT * FROM flight_leg WHERE from_airport = 'BNA' AND transport_type = 'Airport Shuttle'
SELECT * FROM flight WHERE departure_time >= '12:00:00' AND arrival_time <= '19:00:00' AND no_discounts = 0 AND stopovers = 0 AND application = 'airline' AND flight_id NOT IN ( SELECT flight_id FROM flight WHERE departure_time < '12:00:00' OR arrival_time > '19:00:00' )
SELECT COUNT(*) FROM flights WHERE airline_code = 'ACA' AND departure_airport = 'BUR'
SELECT * FROM flights WHERE airline = 'Alaska Airlines' AND departure_city = 'Burbank' AND arrival_city NOT IN ('JFK', 'SFO', 'LAX')
SELECT * FROM flight WHERE departure_airline = 'ALPA' AND from_airport = 'BUR' AND flight_days >= 1
SELECT airline FROM flights WHERE airline IN ( SELECT airline FROM flights GROUP BY airline HAVING COUNT(DISTINCT departure_airline) = 1 )
SELECT * FROM flights WHERE airline_code = 'ALKA' AND arrival_airport = 'BUR' ```
SELECT * FROM flights WHERE airline_code = 'ALPA' AND departure_time >= '2023-03-01 00:00:00' AND departure_time <= '2023-03-31 23:59:00'
SELECT * FROM flight WHERE airline IN ('Alaska Airlines')
SELECT * FROM flights WHERE departure_city = 'seattle'
SELECT * FROM flight WHERE departure_time < '12:00:00' ORDER BY departure_time
SELECT * FROM flight WHERE to_airport = 'CLT' AND arrival_airport = 'LAS' AND fare_basis = 'discounted' AND round_trip_required = 'yes' ORDER BY fare_id
SELECT * FROM flight WHERE departure_time BETWEEN '06:00:00' AND '08:00:00' AND from_airport = 'LAX' AND arrival_airport = 'CLT'
SELECT * FROM flights WHERE departure_time BETWEEN '08:00:00' AND '12:00:00' AND to_airport = 'CLT' AND aircraft_code = '777'
SELECT * FROM flight WHERE departure_time BETWEEN '07:00:00' AND '10:00:00' AND to_airport = 'JFK' AND flight_days = 1
SELECT * FROM flight WHERE to_airport = 'JFK' AND arrival_time >= '17:00:00' AND flight_days = 1
SELECT * FROM flights WHERE departure_day = 'sunday' AND departure_airport = ' montreal-quebec' AND arrival_airport = 'san-diego'
SELECT * FROM flights WHERE date_day = 'tuesday' AND departure_airport = 'SAN_DIEGO' AND arrival_airport = 'INDIANA' AND departure_time >= '17:00:00' AND flight_id NOT IN ( SELECT flight_id FROM flights WHERE date_day = 'monday' AND departure_airport = 'SAN_DIEGO' AND arrival_airport = 'INDIANA' )
SELECT * FROM flight WHERE departure_time = '2023-10-24 08:00:00' AND to_airport = 'INDXJ' AND class_of_service = 'economy'
SELECT * FROM flights WHERE flight_date = '2023-10-27' AND departure_airport = 'YYZ' AND arrival_airport = 'YQM' AND flight_direction = 'N'
SELECT * FROM flights WHERE to_airport = 'cincinnati' AND from_airport = 'burbank' AND airline = 'americana'
SELECT aircraft.aircraft_code, aircraft.capacity FROM aircraft WHERE aircraft.aircraft_code IN ( SELECT aircraft_code FROM flight WHERE flight.departure_time = '2023-10-26 19:59:00' )
SELECT * FROM flights WHERE departure_airport = 'KLAX' AND arrival_airport = 'ORD' AND date(departure_time) = date('next week', current_date()) ```
SELECT * FROM flights WHERE to_airport = 'Long Beach' AND arrival_city = 'St. Louis'
SELECT * FROM flights WHERE to_airport = 'MEMP' AND arrival_airport = 'LASV'
SELECT * FROM flights WHERE to_airport = 'LAS' AND from_airport = 'ONT' ```
SELECT * FROM flights WHERE to_airport = 'ONTARIO' AND arrival_airport = 'MEMPHIS'
SELECT * FROM airport_service WHERE city_code = 'LAS' AND transport_type = 'BUS'
SELECT * FROM flight_leg WHERE to_airport = 'ONT' AND EXISTS ( SELECT 1 FROM airport_service WHERE airport_code = 'ONT' )
SELECT * FROM flights WHERE to_airport = 'TAMPA' AND from_airport = 'MILWAUKEE'
SELECT * FROM flights WHERE to_airport = 'MILW' AND arrival_airport = 'SEA'
SELECT * FROM flight WHERE departure_airport = 'LGD' AND arrival_airport = 'SJC' AND airline = 'UA'
SELECT * FROM flights WHERE date_day = '2023-10-27' AND to_airport = 'CLT' AND departure_airline = 'CLT' AND flight_number = '12345'
SELECT * FROM flights WHERE departure_airport = 'PHX' AND arrival_airport = 'STL' AND day = 'tuesday' ```
SELECT * FROM flights WHERE day_name = 'Thursday' AND from_airport = 'MSP' AND arrival_airport = 'STL'
SELECT * FROM flights WHERE departure_city = 'STL' AND departure_date = '2023-10-27' AND arrival_city = 'CLT' AND flight_day = 'friday'
SELECT * FROM flights WHERE departure_airport = 'BOS' AND arrival_airport = 'ORD' AND stopovers = 'no_discounts' AND flight_stop LIKE '%new%york%'
SELECT * FROM flight WHERE to_airport = 'BUR' AND departure_time = '2023-10-28 09:00:00' AND flight_days = '2023-10-28' AND airlines = 'UA'
SELECT * FROM flights WHERE departure_date = '2023-10-27' AND departure_airport = 'MSN' AND arrival_airport = 'STL' AND flight_direction = 'N'
SELECT * FROM flights WHERE departure_airport = 'STL' AND arrival_airport = 'BUR' AND flight_date = '2023-10-27'
SELECT * FROM flights WHERE departure_date = '2023-10-27' AND departure_airline = 'STA' AND flight_id = ( SELECT flight_id FROM flights WHERE departure_date = '2023-10-27' AND departure_airline = 'STA' AND to_airport = 'BUR' )
SELECT * FROM flights WHERE departure_date = '2023-10-27' AND arrival_time <= '18:00:00' AND flight_stop LIKE '%Saturday%' AND arrival_time >= '16:00:00'
SELECT * FROM flights WHERE departure_city = 'cincinnati' AND arrival_city = 'newark' AND arrival_time <= '2023-10-27 18:00:00' AND flight_day = 'saturday' AND aircraft_code = 'DAL'
SELECT * FROM flights WHERE departure_airport = 'MIA' AND arrival_airport = 'ORD' AND departure_time >= '2023-10-27 17:00:00' AND arrival_time <= '2023-10-27 20:00:00'
SELECT * FROM flights WHERE departure_airport = 'MEM' AND arrival_airport = 'TAC' AND flight_stops LIKE '%LOS%'
SELECT * FROM flight WHERE departure_time > '18:00:00' AND to_airport = 'CINcinnati' AND to_airport = 'SAN_JOSE_CALIFORNIA'
SELECT * FROM flights WHERE departure_airport = 'SJC' AND arrival_airport = 'HOU' AND stopovers = 0 AND flight_duration = 0
SELECT * FROM flights WHERE departure_airline = 'DAL' AND arrival_airline = 'MEM' AND stopovers = 0 AND maximum_stay = 72
SELECT * FROM flight WHERE to_airport = 'MEMPH' AND from_airport = 'CINcinnati' AND day_number = 3 AND aircraft_code = '737'
SELECT * FROM flights WHERE departure_airport = 'JFK' AND arrival_airport = 'MSN' ```
SELECT * FROM flights WHERE departure_airport = 'ONT' AND arrival_airport = 'WCH' AND stopovers = 'no_discounts' AND minimum_stay = 7 AND flight_stop.stop_days >= 2 AND flight_stop.stop_airport IN ('ORD', 'MDW', 'MSP') AND flight_stop.arrival_time >= '2023-10-27 12:00:00'
SELECT * FROM flights WHERE to_airport = 'LAX' AND departure_airport = 'CLT' AND flight_days >= 1
SELECT * FROM flights WHERE to_airport = 'CHARLOTTE' AND arrival_airport = 'NEWARK'
SELECT * FROM flights WHERE to_airport = 'JFK' AND from_airport = 'LAX'
SELECT * FROM flights WHERE to_airport = 'CINcinnati' AND airline = 'AMERICAN AIRLINES'
SELECT * FROM flights WHERE to_airport = 'KCLT' AND departure_date = '2023-06-16' ```
SELECT * FROM flights WHERE departure_airport = 'ORD' AND arrival_airport = 'MCI' AND month_number = 6 AND day_number = 17
SELECT * FROM flights WHERE departure_airport = 'KCLT' AND arrival_airport = 'CHI' AND month_number = 6 AND day_number = 16
SELECT * FROM flights WHERE departure_airport = 'CHI' AND arrival_airport = 'MCI' AND month_number = 6 AND day_number = 17
SELECT * FROM flights WHERE to_airport = 'BUR' AND from_airport = 'MIL' ```
SELECT * FROM flights WHERE flight_stop = 'cincinnati' AND arrival_time <= '2023-10-27 18:00:00' AND departure_time >= '2023-10-27 06:00:00' ```
SELECT * FROM flights WHERE departure_date = '2023-10-27' AND destination_city = 'new_york' AND arrival_time < '18:00:00' AND EXISTS ( SELECT 1 FROM flights WHERE departure_date = '2023-10-27' AND destination_city = 'new_york' AND arrival_time >= '18:00:00' AND delta = 'yes' AND departure_airport = 'slc' )
SELECT * FROM flight WHERE to_airport = 'MIA' AND arrival_time >= '2023-04-05 17:00:00' AND airline = 'AMERICAN AIRLINES'
SELECT * FROM flights WHERE departure_date = '2023-10-23' AND to_airport = 'KLAX' AND flight_day = 'Wed'
SELECT * FROM flight WHERE to_airport = 'KCLT' AND departure_date = '2023-05-26' AND departure_time = '19:00:00' AND flight_id IN ( SELECT flight_id FROM flight WHERE to_airport = 'ORDH' AND arrival_time = '22:00:00' )
SELECT * FROM flights WHERE departure_airport = 'MEM' AND arrival_airport = 'TAC' AND EXISTS ( SELECT 1 FROM flight_stops WHERE departure_airline = 'AA' AND arrival_airline = 'LAX' )
SELECT * FROM flights WHERE departure_city = 'San Diego' AND arrival_city = 'Phoenix' AND day = 'Monday' AND time_elapsed >= 0
SELECT * FROM flights WHERE departure_airport = 'PHOENIX' AND arrival_airport = 'DETROIT' AND day = 'MONDAY'
SELECT * FROM flights WHERE departure_airport = 'DET' AND arrival_airport = 'SAN' AND day = 'tuesday' ```
SELECT * FROM flights WHERE departure_airport = 'CIN' AND arrival_airport = 'SJC' AND day = 'MONDAY'
SELECT * FROM flights WHERE flight_id IN ( SELECT flight_id FROM flights WHERE departure_airport = 'SJC' AND arrival_airport = 'HOU' AND day = 'Wednesday' )
SELECT * FROM flights WHERE to_airport = 'HOUSTON' AND from_airport = 'MEMPH' AND day(date_day) = 'friday' ```
SELECT * FROM flights WHERE to_airport = 'MEMP' AND departure_date = '2023-10-27' AND arrival_date = '2023-10-27' AND flight_day = 'SUNDAY'
SELECT * FROM flight WHERE to_airport = 'JFK' AND departure_time >= '2023-10-27 18:30:00' AND departure_time <= '2023-10-27 21:30:00' AND airline_code = 'AF' ```
SELECT * FROM flights WHERE departure_date = '2023-06-10' AND from_airport = 'BURBANK' AND to_airport = 'TACOMA'
SELECT * FROM flights WHERE to_airport = 'BUR' AND from_airport = 'MKE'
SELECT * FROM flights WHERE to_airport = 'BUR' AND from_airport = 'MIL'
SELECT * FROM flight WHERE to_airport = 'MILW' AND arrival_airport = 'STL'
SELECT * FROM flights WHERE to_airport = 'STL' AND arrival_airport = 'BUR'
SELECT DISTINCT f.flight_id, f.airline_code FROM flights f JOIN flight_stops fs ON f.flight_id = fs.flight_id JOIN airports a ON fs.from_airport = a.airport_code JOIN airports b ON fs.to_airport = b.airport_code WHERE a.city_name = 'Burbank' AND b.city_name = 'Milwaukee' AND fs.arrival_time >= '2023-10-27 12:00:00' AND fs.arrival_time <= '2023-10-27 17:00:00' ```
SELECT * FROM flight WHERE to_airport = 'BUR' AND from_airport = 'MIL' AND stopovers = 'ST. LOUIS'
SELECT * FROM flights WHERE to_airport = 'WESTCHESTER COUNTY' AND flight_days >= 1
SELECT * FROM flights WHERE to_airport = 'SLC' AND departure_date >= '2023-10-27' AND departure_date <= '2023-10-30'
SELECT DISTINCT airport_code, airport_name, airport_location FROM airport WHERE airport_location LIKE '%Westchester County%' OR airport_name LIKE '%Westchester County%'
SELECT * FROM flights WHERE to_airport = 'CIN' AND arrival_time = '2023-10-27 19:00:00' AND airline_code = 'UA'
SELECT DISTINCT airport_code, airport_name, airport_location FROM airport WHERE city_code IN ('NYC', 'NY') ORDER BY airport_name
SELECT * FROM flights WHERE departure_time >= '2023-10-27 18:00:00' AND arrival_time <= '2023-10-27 18:00:00' AND arrival_airport IN ('JFK', 'LGA', 'EWR', 'JFK', ' LGA', ' EWR')
SELECT * FROM flights WHERE to_airport = 'cincinnati' AND arrival_airport IN ('new_york', 'nyc', 'nyc', 'ny')
SELECT * FROM flight WHERE to_airport = 'MIA' AND departure_airline = 'AA' AND flight_days BETWEEN '2023-10-27' AND '2023-10-30'
SELECT * FROM flights WHERE to_airport = 'KCLT' AND arrival_airport = 'CHI'
SELECT * FROM flights WHERE departure_city = 'MEM' AND arrival_city = 'TAM' ```
