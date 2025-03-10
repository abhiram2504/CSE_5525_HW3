SELECT * FROM flights WHERE departure_date = '2023-10-27' AND from_airport = 'DENV' AND to_airport = 'PHL'
SELECT * FROM flights WHERE flight_time BETWEEN '14:00:00' AND '17:00:00' AND departure_airport = 'WAAS' AND arrival_airport = 'BOS'
SELECT * FROM flight WHERE arrival_time BETWEEN '2023-10-27 08:00:00' AND '2023-10-27 09:00:00' AND departure_airport = 'ANY' AND flight_day = 'THURSDAY' AND arrival_time < '09:00:00'
SELECT * FROM flights WHERE to_airport = 'PHOENIX' AND from_airport = 'MILWAUKEE'
SELECT * FROM flight WHERE to_airport = 'PHL' AND departure_airport = 'DFW' AND aircraft_code = '767'
SELECT * FROM flights WHERE departure_airport = 'DEN' AND month_number = 9 AND day_number = 1
SELECT * FROM flights WHERE departure_airport = 'BOS' AND arrival_airport = 'SFO' AND no_discounts = 0 AND minimum_stay = 1
SELECT * FROM flights WHERE to_airport = 'DENV' AND from_airport = 'ATL'
SELECT * FROM flights WHERE to_airport = 'BALMD' AND arrival_airport = 'ATL' ```
SELECT * FROM flights WHERE to_airport = 'JFK' AND departure_date >= '2023-10-27' AND departure_time >= '10:00:00'
SELECT * FROM flights WHERE to_airport = 'ATL' AND from_airport = 'BAL'
SELECT * FROM flights WHERE to_airport = 'DALLS' AND from_airport = 'BOS' ```
SELECT * FROM flights WHERE departure_airport = 'HOU' AND arrival_airport = 'MIL' AND day = 'friday' AND airline = 'AMERICAN AIRLINES'
SELECT * FROM flights WHERE airline_code = 'UA' AND from_airport = 'BOS' AND arrival_airport = 'DEN'
SELECT * FROM flights WHERE to_airport = 'DENV' AND from_airport = 'PHL'
SELECT flight FROM flight WHERE departure_airport = 'DEN' AND destination_airport = 'BOS' AND departure_time = (SELECT MIN(departure_time) FROM flight WHERE departure_airport = 'DEN' AND destination_airport = 'BOS')
SELECT * FROM flights WHERE departure_airport = 'SFO' AND arrival_airport = 'BOS' AND month_number = 8 AND day_number = 8
SELECT * FROM flights WHERE to_airport = 'OAK' AND arrival_time >= '15:00:00' AND arrival_time <= '19:00:00' ```
SELECT flight.flight_id, flight.fare_id FROM flight JOIN fare ON flight.fare_id = fare.fare_id WHERE flight.from_airport = 'DALLAS' AND fare.round_trip_required = true ORDER BY fare.round_trip_cost ASC
SELECT * FROM flight WHERE departure_time BETWEEN '08:00:00' AND '12:00:00' AND to_airport = 'BOS' AND from_airport = 'BAL'
SELECT * FROM flights WHERE stop_days = ( SELECT MAX(stop_days) FROM flights WHERE to_airport = 'BOS' AND from_airport = 'SFO' )
SELECT * FROM flights WHERE airline_code = 'AA' AND departure_airport = 'PHL' AND arrival_airport = 'DFW'
SELECT * FROM flight WHERE departure_airport = 'PHL' AND arrival_airport = 'BAL' AND arrival_time >= '16:00:00' AND flight_id NOT IN ( SELECT flight_id FROM flight WHERE departure_airport = 'PHL' AND arrival_airport = 'BAL' AND arrival_time < '16:00:00' )
SELECT * FROM flight WHERE departure_airport = 'LAX' AND arrival_airport = 'CLT' AND date_day = '2023-10-27' AND time_interval = 'morning'
SELECT * FROM flights WHERE flight_id IN ( SELECT flight_id FROM flight_legs WHERE flight_id IN ( SELECT flight_id FROM flights WHERE departure_city = 'PIT' AND arrival_city = 'BAL' AND arrival_time < '10:00:00' AND arrival_date = '2023-10-25' ) ) AND flight_date = '2023-10-25'
SELECT * FROM flights WHERE departure_time BETWEEN '2023-10-27 10:00:00' AND '2023-10-27 15:00:00'
SELECT * FROM flights WHERE to_airport = 'DAL' AND arrival_airport = 'PHL'
SELECT * FROM flights WHERE departure_date = '2023-10-27' AND from_airport = 'SFO' AND destination = 'PIT' AND day = 'tuesday'
SELECT fare.fare_id, fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE flight.flight_number = 415 AND flight.to_airport = 'ORD' AND flight.departure_date = '2023-10-27' AND flight.to_airport = 'MCI'
SELECT * FROM flight WHERE departure_airport = 'BOS' AND arrival_airport = 'SFO' AND EXISTS ( SELECT 1 FROM flight WHERE departure_airport = 'BOS' AND arrival_airport = 'DAL' AND airline = 'AMERICAN AIRLINES' )
SELECT * FROM flights WHERE departure_time BETWEEN '07:00:00' AND '09:00:00' AND from_airport = 'PHL' AND to_airport = 'PIT'
SELECT * FROM flights WHERE to_airport = 'PIT' AND from_airport = 'PHL'
SELECT * FROM flights WHERE departure_city = 'Philadelphia' AND arrival_city = 'Pittsburgh' AND departure_time BETWEEN 1200 AND 1700
SELECT * FROM flights WHERE to_airport = 'DTW' AND airline_code = 'MEA' AND flight_days BETWEEN 7 AND 14 AND restriction_code = 'no_discounts' AND minimum_stay = 5
SELECT * FROM flights WHERE to_airport = 'BWI' AND from_airport = 'PHL' AND flight_days >= 1
SELECT * FROM flights WHERE to_airport = 'BOS' AND arrival_airport = 'DEN' ```
SELECT * FROM flights WHERE departure_city = 'Dallas' AND arrival_city = 'Houston' AND flight_date >= '2023-03-01' AND flight_date <= '2023-03-31'
SELECT * FROM flights WHERE flight_id = ( SELECT flight_id FROM flights WHERE departure_airport = 'PHL' AND arrival_airport = 'DEN' AND departure_date = '2023-10-27' )
SELECT * FROM flights WHERE departure_airport = 'DENV' AND arrival_airport = 'DALS' AND flight_date >= '2023-10-27' AND flight_date <= '2023-10-30'
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'BOS' AND departure_time = '2023-10-27 09:00:00' AND from_airport = 'DEN' AND flight_id IN ( SELECT flight_id FROM flight WHERE to_airport = 'BOS' AND departure_time = '2023-10-27 13:00:00' )
SELECT * FROM flight WHERE to_airport = 'INDG' AND from_airport = 'ORDC' AND flight_date = '2023-12-27' AND round_trip_required = 1
SELECT * FROM flights WHERE departure_time >= '16:00:00' AND departure_day = ' wednesday' AND flight_id IN ( SELECT flight_id FROM flights WHERE departure_time >= '16:00:00' AND departure_day = ' wednesday' AND arrival_time >= '19:00:00' )
SELECT * FROM flight WHERE to_airport = 'toronto' AND arrival_time >= 'afternoon' ```
SELECT * FROM flight WHERE departure_time < '10:00:00' AND aircraft_code = 'XXXX'
SELECT * FROM flight WHERE departure_airport = 'DENV' AND arrival_time BETWEEN '17:00:00' AND '18:00:00' ```
SELECT * FROM flight WHERE to_airport = 'DEN' AND arrival_airport = 'BAL'
SELECT * FROM flights WHERE to_airport = 'DALLS' AND from_airport = 'PITTSBURGH' ```
SELECT * FROM flights WHERE departure_time BETWEEN '08:00:00' AND '12:00:00' AND from_airport = 'PHL' AND day_name = 'Wednesday' AND aircraft_code_sequence = '767'
SELECT * FROM flight WHERE to_airport = 'ORLANDO' AND from_airport = 'KANSAS_CITY' AND round_trip_required = 'true' ```
SELECT * FROM flight_leg WHERE airport_code = 'OAK' AND day_name = 'Tuesday' AND flight_id = ( SELECT flight_id FROM flight WHERE airline = 'OAK AIRLINES' AND class_of_service = 'economy' AND date_day = '2023-10-26' )
SELECT * FROM flights WHERE departure_city = 'DENVER' AND arrival_city = 'PHIladelphia'
SELECT * FROM flights WHERE to_airport = 'SFO' AND from_airport = 'PIT' AND departure_time >= '2023-10-27 00:00:00' AND departure_time <= '2023-10-27 23:59:59'
SELECT fare.fare_id, fare.fare_basis_code, fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE flight.to_airport = 'JFK' AND flight.from_airport = 'LHR' AND flight.flight_id = 19
SELECT * FROM flight WHERE departure_airport = 'BOS' AND arrival_airport = 'DEN' AND NOT EXISTS ( SELECT 1 FROM flight WHERE departure_airport = 'BOS' AND arrival_airport = 'DEN' AND flight_id > 1 )
SELECT * FROM flights WHERE departure_airport = 'SFO' AND arrival_airport = 'PIT' AND flight_date BETWEEN '2023-10-27' AND '2023-10-30'
SELECT * FROM flights WHERE airline_code = 'AA' AND departure_city = 'BOS' AND arrival_city = 'DEN'
SELECT * FROM flight WHERE departure_airport = 'SFO' AND arrival_airport = 'DEN' AND airline = 'UA'
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE departure_date = '2023-10-26' AND to_airport = 'BOS' ORDER BY fare_id
SELECT * FROM flights WHERE departure_airport = 'PHL' AND arrival_airport = 'DAL' AND stopovers = 0 AND advance_purchase = 0
SELECT DISTINCT aircraft.aircraft_code, aircraft.capacity, aircraft.wing_span, aircraft.engines FROM aircraft WHERE EXISTS ( SELECT 1 FROM flights WHERE EXISTS ( SELECT 1 FROM flight_legs WHERE flight_legs.flight_id = flights.flight_id AND flight_legs.leg_flight = flights.flight_id AND flight_legs.to_airport = 'BOS' AND flight_legs.from_airport = 'SFO' ) )
SELECT * FROM flights WHERE to_airport = 'BOS' AND arrival_airport = 'DEN' AND stopovers = 0
SELECT * FROM flights WHERE departure_time = ( SELECT MIN(departure_time) FROM flights WHERE to_airport = 'BOS' AND departure_date = DATE('2023-10-26') )
SELECT * FROM flights WHERE to_airport = 'CHARLOTTE' AND departure_time >= '13:00:00' ```
SELECT * FROM flights WHERE departure_time <= '18:00:00' AND arrival_time <= '18:00:00' AND to_airport = 'SLC' AND airline_code = 'CLT'
SELECT * FROM flights WHERE departure_date = '2023-12-16' AND to_airport = 'OAKN' AND arrival_airport = 'DFW'
SELECT fare.flight_id, fare.fare_id, fare.round_trip_cost FROM flight JOIN fare ON fare.flight_id = flight.flight_id WHERE flight.from_airport = 'DALLAS' AND flight.to_airport = 'BALtimore' AND fare.class_of_service = 'FIRST CLASS'
SELECT * FROM flight WHERE airline_code = 'DAL' AND destination = 'SFO' AND month_number = 10 AND day_number = 25
SELECT * FROM flights WHERE to_airport = 'CLE' AND departure_date = '2023-10-27' AND flight_number = '12345'
SELECT * FROM flights WHERE to_airport = 'DFW' AND from_airport = 'PHL' ```
SELECT * FROM flights WHERE departure_airport = 'LAS' AND arrival_airport = 'NYC' AND stopovers = 0 AND flight_days BETWEEN 1 AND 7
SELECT * FROM flights WHERE to_airport = 'BOS' AND arrival_airport = 'WAO' ```
SELECT 1
SELECT * FROM flight WHERE to_airport = 'ATL' AND arrival_time = '2023-10-27 19:00:00'
SELECT * FROM flights WHERE to_airport = 'PHL' AND departure_airport = 'DAL'
SELECT * FROM flights WHERE departure_date = '2023-10-27' AND departure_airport = 'PHL' AND arrival_airport = 'DEN' AND flight_day = 'Sunday'
SELECT * FROM flights WHERE departure_airport = 'MONTREAL' AND arrival_airport = 'CHARLOTTE'
SELECT COUNT(*) FROM flights WHERE departure_city = 'SAN FRANCISCO' AND arrival_city = 'PHILADELPHIA' AND month = 'August' AND day = '18'
SELECT * FROM flights WHERE to_airport = 'BOS' AND from_airport = 'PIT' AND departure_time >= '2023-10-27 00:00:00' AND departure_time <= '2023-10-27 23:59:59'
SELECT flight.flight_id, fare.fare_id, fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE fare.round_trip_cost = ( SELECT MAX(fare.round_trip_cost) FROM fare WHERE flight.flight_id = fare.flight_id )
SELECT * FROM flights WHERE to_airport = 'LGD' AND from_airport = 'JFK' AND flight_days BETWEEN 1 AND 7
SELECT * FROM flights WHERE to_airport = 'DENV' AND from_airport = 'PIT' ```
SELECT * FROM flights WHERE departure_airport = 'ATL' AND arrival_airport = 'BOS' ORDER BY departure_time ASC
SELECT * FROM flight WHERE departure_airport = 'ATL' AND departure_date = '2023-09-05' AND flight_number = '1234'
SELECT DISTINCT f.* FROM flights f JOIN flight_stops fs ON f.flight_id = fs.flight_id JOIN cities c ON fs.stop_airport = c.city_name WHERE c.city_name = 'Miami' AND f.departure_day = 'Friday' ```
SELECT * FROM flights WHERE departure_time = '2023-10-27 09:00:00' AND arrival_airport = 'DEN' ```
SELECT * FROM flights WHERE departure_city = 'PIT' AND arrival_city = 'SFO' AND date(departure_time) = '2023-10-27'
SELECT * FROM airport_service WHERE city_code = 'BOS' AND transport_type = 'BUS'
SELECT * FROM flights WHERE departure_date = '2023-10-27' AND departure_time <= '16:00:00' AND arrival_time >= '14:00:00' AND to_airport = 'SFO' AND flight_days = 1
SELECT * FROM flights WHERE to_airport = 'DENV' AND from_airport = 'SFO'
SELECT * FROM flights WHERE departure_airport = 'DAL' AND arrival_airport = 'BOS' AND flight_date BETWEEN '2023-10-27' AND '2023-10-30'
SELECT * FROM flight WHERE aircraft_code = 'CO1209'
SELECT * FROM flight WHERE departure_day = 'monday' AND departure_time < '12:00:00' AND origin = 'DENV' AND destination = 'CHI'
SELECT * FROM flights WHERE to_airport = 'ATL' AND from_airport = 'BOS' ```
SELECT * FROM flights WHERE departure_airport = 'SFO' AND arrival_airport = 'BOS'
SELECT COUNT(*) FROM flights WHERE to_airport = 'SFO' AND airline = 'United Airlines'
SELECT * FROM flight WHERE to_airport = 'HOU' AND departure_time = 'TUESDAY 08:00:00' AND airlines = 'FAA'
SELECT flight.flight_id, flight.fare_id, flight.to_airport, flight.from_airport, flight.departure_time FROM flight JOIN fare ON flight.fare_id = fare.fare_id WHERE flight.from_airport = 'ATL' AND flight.to_airport = 'PIT' AND fare.round_trip_required = 'N' ORDER BY flight.fare_id
SELECT airport_code, transport_type, city_code, ground_fare FROM airport WHERE airport_code = 'PIT' AND time_zone_code = 'EST' AND distance(airport_code, 'DTN') < 2000
SELECT * FROM flights WHERE to_airport = 'SFO' AND from_airport = 'PIT' AND date_day = 1 AND time_interval = 'DAY'
SELECT * FROM flights WHERE departure_city = 'SAN FRANCISCO' AND arrival_city = 'PITTSBURGH' AND day = 'MONDAY' AND time_elapsed BETWEEN '08:00:00' AND '12:00:00'
SELECT * FROM flight WHERE to_airport = 'Newark Airport' AND flight_id IN ( SELECT flight_id FROM flight WHERE departure_airport = 'Newark Airport' AND date_day = 1 )
SELECT * FROM flight WHERE to_airport = 'BOS' AND arrival_time > '19:00:00' AND aircraft_code_sequence LIKE '%BA%'
SELECT * FROM flights WHERE to_airport = 'DALLAS' AND arrival_airport = 'BALtimore'
SELECT 1
SELECT * FROM flight WHERE aircraft_code = '767' AND departure_time < '06:00:00' ```
SELECT * FROM flights WHERE to_airport = 'PHL' AND arrival_airport = 'DAL'
SELECT fare.to_airport, fare.restriction_code, fare.round_trip_cost FROM flight JOIN fare ON fare.flight_id = flight.flight_id WHERE flight.from_airport = 'BOS' AND flight.to_airport = 'SFO' AND fare.class_of_service = 'first_class'
SELECT * FROM flights WHERE to_airport = 'BOS' AND departure_time >= '2023-10-27 10:00:00' AND arrival_time <= '2023-10-27 20:00:00' AND fare_basis = 'discounted' AND round_trip_required = 'false' AND fare_id = ( SELECT fare_id FROM flights WHERE to_airport = 'BOS' AND departure_time >= '2023-10-27 10:00:00' AND arrival_time <= '2023-10-27 20:00:00' AND fare_basis = 'discounted' AND round_trip_required = 'false' AND distance(from_airport, to_airport) = ( SELECT MIN(distance) FROM flights WHERE to_airport = 'BOS' AND departure_time >= '2023-10-27 10:00:00' AND arrival_time <= '2023-10-27 20:00:00' AND fare_basis = 'discounted' AND round_trip_required = 'false' ) )
SELECT * FROM flights WHERE to_airport = 'BALMD' AND arrival_airport = 'SFO' AND flight_date BETWEEN '2023-10-27' AND '2023-10-30'
SELECT * FROM flight WHERE to_airport = 'BAL' AND arrival_airport = 'DAL' AND round_trip_required = 'YES' ```
SELECT * FROM flights WHERE to_airport = 'ATL'
SELECT * FROM flights WHERE to_airport = 'PHL' AND arrival_airport = 'DAL'
SELECT * FROM flights WHERE to_airport = 'SEA' AND arrival_airport = 'SLC'
SELECT * FROM flights WHERE departure_airport = 'PIT' AND arrival_airport = 'SFO' AND date_day = 1 AND time_interval = 'morning' ORDER BY departure_time
SELECT * FROM flight WHERE departure_time BETWEEN '12:00:00' AND '17:00:00' ```
SELECT * FROM flights WHERE to_airport = 'ORD' ```
SELECT * FROM flights WHERE departure_airport = 'LAX' AND arrival_airport = 'PIT' AND arrival_time < '17:00:00' AND day_name = 'Tuesday'
SELECT * FROM airport_service WHERE city_code = 'BOS' AND transport_type = 'BUS'
SELECT flight.flight_id, flight.from_airport, flight.departure_time, flight.arrival_time FROM flight JOIN flight_stop ON flight.flight_id = flight_stop.flight_id JOIN city ON flight_stop.stop_airport = city.city_name WHERE flight.from_airport = 'BOS' AND flight.arrival_time >= '2023-10-27 12:00:00' AND flight_stop.stop_days = 1 AND flight.meal_code = 'L' ORDER BY flight.departure_time
SELECT * FROM flights WHERE arrival_airport = 'MHT' ```
SELECT * FROM flights WHERE departure_airline = 'Canadian Airlines International' ```
SELECT * FROM airport_service WHERE airport_code = 'PIT' AND transport_type = 'BUS' AND city_code = 'PIT'
SELECT capacity FROM flight_legs WHERE aircraft_code = 'F28'
SELECT * FROM flights WHERE departure_date = '2023-07-28' AND departure_airline = 'Delta' AND stopovers = 0 AND flight_days = 1 AND arrival_time >= '14:00:00'
SELECT * FROM flights WHERE departure_time > '12:00:00' AND airline_code = 'USAir'
SELECT * FROM flights WHERE flight_date >= '2023-10-27' AND departure_time > 15 AND from_airport = 'ATL' AND to_airport = 'DCA'
SELECT * FROM flights WHERE to_airport = 'CLE' AND from_airport = 'MEM' AND flight_days >= 1
SELECT 1
SELECT * FROM flights WHERE to_airport = 'CINcinnati' AND from_airport = 'TORONTO'
SELECT * FROM flight WHERE to_airport = 'LAS' AND departure_time = '2023-10-27 12:00:00' AND airline = 'TWA'
SELECT * FROM flight WHERE to_airport = 'ATL' AND from_airport = 'BOS' ORDER BY departure_time DESC
SELECT * FROM flights WHERE to_airport = 'MEMPH' AND arrival_airport = 'LASV'
SELECT * FROM flights WHERE departure_airport = 'ATL' AND arrival_airport = 'BAL' AND aircraft_code = '757' AND nonstop = 1 AND arrival_time >= '19:00:00'
SELECT * FROM flight WHERE to_airport = 'STL' AND arrival_time = '2023-10-27 19:00:00' AND flight_stop IN ( 'departure_airline': 'AA', 'stop_number': 12345, 'arrival_flight_number': 89012 ) AND food_service = 'meal_code: 12345' ```
SELECT * FROM flights WHERE airport_code = 'BOS' AND destination_airport = 'BOS' AND ground_service = 'airport_ground'
SELECT * FROM flights WHERE to_airport = 'BALM' AND arrival_airport = 'SFO'
SELECT fare.to_airport, fare.restriction_code, fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE flight.from_airport = 'DAL' AND flight.to_airport = 'DEN' AND fare.round_trip_required = 'true' AND fare.class_of_service = 'first'
SELECT * FROM flights WHERE departure_time >= '2023-10-27 19:00:00' AND departure_airport = 'SEA' AND day_name = 'sunday' AND arrival_flight_number > 430
SELECT * FROM flights WHERE (departure_time >= '12:00' AND departure_time < '11:00') AND flight_fare < 1100
SELECT * FROM flights WHERE departure_airport = 'BOS' AND arrival_airport = 'DAL'
SELECT * FROM flights WHERE to_airport = 'BAL' AND departure_time BETWEEN '2023-04-01 00:00:00' AND departure_time <= '2023-04-15 23:59:00' AND fare_basis = 'discounted'
SELECT * FROM flights WHERE to_airport = 'SFO' AND departure_date = '2023-10-27' AND airline = 'AMERICAN' AND class = 'FIRST CLASS'
SELECT * FROM flight WHERE airline = 'Airline Name' AND flight_time BETWEEN '12:00 PM' AND '2:00 PM'
SELECT * FROM flights WHERE date_day = 1 AND time_interval = 'morning' AND departure_airport = 'PHL' AND arrival_airport = 'BOS' ```
SELECT * FROM flight WHERE to_airport = 'SLC' AND round_trip_required = 'true'
SELECT * FROM flights WHERE departure_city = ' nashville' AND arrival_city = ' st. louis' AND stopovers = 0
SELECT DISTINCT airline.airline FROM flights JOIN airline ON flights.airline_code = airline.airline
SELECT * FROM airport_service WHERE airport_code = 'SFO' AND transport_type = 'BUS' AND city_code = 'SANFRANCISCO'
SELECT * FROM flights WHERE to_airport = 'ATL' AND arrival_airport = 'DCA'
SELECT 1
SELECT * FROM flights WHERE to_airport = 'DFW' AND airline IN ('AMERICAN', 'DELTA')
SELECT fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE city = 'Pittsburgh' AND aircraft_code = 'LIMO' ```
SELECT fare.to_airport, fare.restriction_code, fare.round_trip_cost FROM flight JOIN fare ON fare.flight_id = flight.flight_id WHERE flight.from_airport = 'BOS' AND flight.to_airport = 'WAI' ORDER BY fare.round_trip_cost ASC
SELECT * FROM flights WHERE flight_day = 'Sunday' AND arrival_time >= '08:00:00' AND arrival_time < '12:00:00'
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'ATL' AND from_airport = 'SFO' AND flight_id IN ( SELECT flight_id FROM flight WHERE departure_airport = 'ATL' AND arrival_airport = 'SFO' )
SELECT * FROM flight WHERE departure_city = 'DEN' AND arrival_city = 'SFO' AND flight_date BETWEEN '2023-03-01' AND '2023-03-31' AND food_service = 'breakfast'
SELECT * FROM flight WHERE to_airport = 'CLE' AND arrival_time < '16:00' ```
SELECT * FROM flight.class_of_service
SELECT DISTINCT e.airline FROM flights f JOIN flight_stops fs ON f.flight_id = fs.flight_id JOIN cities c ON fs.stop_airport = c.airport_code JOIN airlines a ON c.airline_code = a.airline_code WHERE f.departure_city = 'WA' AND f.arrival_city = 'DEN' AND a.airline_code IN ('UA', 'DL', 'AA', 'EY', 'QF')
SELECT * FROM flight WHERE to_airport = 'UA270' AND departure_time >= '2023-10-27 10:00:00' AND departure_time <= '2023-10-27 14:00:00'
SELECT * FROM flight WHERE airline IN ('Eastern Airlines') AND departure_time BETWEEN '12:00:00' AND '16:00:00' ```
SELECT * FROM flights WHERE departure_date = '2023-10-24' AND from_airport = 'CLE' AND destination_airport = 'MIA'
SELECT * FROM flights WHERE departure_airline = 'OAK' AND arrival_time BETWEEN '17:00:00' AND '18:00:00' AND stopovers = 0
SELECT * FROM flights WHERE to_airport = 'PHOENIX' AND from_airport = 'MILWAUKEE' AND day = 'WEDNESDAY'
SELECT * FROM flights WHERE departure_time >= '12:00:00' AND flight_fare < 1100 ORDER BY flight_id
SELECT * FROM flights WHERE stopovers = 0 AND departure_airline = 'DAL' AND arrival_airline = 'HOU'
SELECT * FROM flight WHERE departure_time >= '17:00:00' AND from_airport = 'CHI' AND destination IN ('MIL')
SELECT * FROM flights WHERE date_day = 3 AND departure_airport = 'ATL' AND arrival_airport = 'DCA'
SELECT * FROM flight WHERE departure_time < '12:00:00' AND airline = 'American Airlines' ```
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'DFW' AND airline = 'American Airlines' AND flight_id = '928'
SELECT distance FROM airport WHERE airport_code = 'DAL' AND city_code = 'DFW'
SELECT * FROM flights WHERE to_airport = 'CVG' AND airline = 'AA' AND departure_time >= CURDATE() AND departure_time < CURDATE() + INTERVAL 1 DAY
SELECT * FROM flight WHERE departure_city = 'WA' AND arrival_city = 'SF' ```
SELECT * FROM flights WHERE to_airport = 'LAS' AND departure_airline = 'NV' AND round_trip_required = 'N' ```
SELECT * FROM flights WHERE to_airport = 'DALLAS' AND arrival_airport = 'ATLANTA'
SELECT * FROM flight WHERE to_airport = 'PHOENIX' AND arrival_airport = 'LAS VEGAS'
SELECT * FROM flights WHERE arrival_time = 'Sunday' AND departure_airport = 'Chicago' AND airline_code = 'Continental'
SELECT * FROM flights WHERE flight_day = 'saturday' AND arrival_time >= '12:00:00' AND departure_time > (SELECT departure_time FROM flights WHERE day = 'sunday' AND city = 'denver') ```
SELECT * FROM flights WHERE from_airport = 'LOVE' AND to_airport IN ('JFK', 'SFO', 'LAX')
SELECT * FROM flights WHERE to_airport = 'LOVE' OR from_airport = 'LOVE'
SELECT * FROM flights WHERE to_airport = 'BOS' AND departure_airline = 'AA' AND stopovers = 'yes' AND flight_stop = 'DEN' ```
SELECT * FROM flight WHERE flight_basis = 'discounted' AND from_airport = 'DAL' AND to_airport = 'ATL'
SELECT * FROM airport WHERE airport_code = 'SFO' AND time_zone_code = 'PST'
SELECT * FROM flights WHERE departure_city = 'ATL' AND arrival_city = 'DEN' ```
SELECT * FROM airport_service WHERE city_code = 'SFO' AND transport_type = 'COACH'
SELECT * FROM flights WHERE to_airport = 'OAKN' AND from_airport = 'SFO'
SELECT * FROM flights WHERE departure_date = '2023-10-27' AND departure_airline = 'UA' AND arrival_date = '2023-10-30' AND arrival_airline = 'F9'
SELECT * FROM flight WHERE to_airport = 'DEN' AND departure_date = '2091-07-25' AND class_type = 'FIRST CLASS'
SELECT * FROM flights WHERE airline_code = 'AA' AND departure_city = 'MILW' AND arrival_city = 'PHOX'
SELECT * FROM flight WHERE to_airport = 'ATL' AND departure_time = ( SELECT MIN(departure_time) FROM flight WHERE to_airport = 'BWI' )
SELECT DISTINCT a.airline FROM flights f JOIN airlines a ON f.airline_code = a.airline_code WHERE f.from_airport = 'TOR' AND f.to_airport = 'DEN' ```
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'SFO' AND departure_date = '2023-11-07' AND from_airport = 'OAK' ```
SELECT 1
SELECT * FROM flight WHERE departure_time BETWEEN '06:00:00' AND '10:00:00' AND airline_code = 'CC' ```
SELECT * FROM flights WHERE airline = 'United Airlines' AND class_of_service = 'First Class'
SELECT * FROM flights WHERE departure_city = 'Philadelphia' AND arrival_city = 'Dallas' ```
SELECT * FROM flights WHERE departure_time BETWEEN '23:00:00' AND '01:00:00' AND to_airport = 'OAK' ```
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'DENV' AND from_airport = 'SFO' AND flight_id = 'UA297'
SELECT * FROM flight WHERE to_airport = 'PHL' AND arrival_airport = 'SFO'
SELECT * FROM flight WHERE to_airport = 'ATL' AND arrival_date = '2023-10-27' AND flight_id = ( SELECT flight_id FROM flight WHERE to_airport = 'ATL' AND arrival_date = '2023-10-27' AND flight_id > ( SELECT flight_id FROM flight WHERE to_airport = 'ATL' AND arrival_date = '2023-10-27' AND flight_id < ( SELECT flight_id FROM flight WHERE to_airport = 'OAK' AND arrival_date = '2023-10-27' ) ) )
SELECT * FROM flights WHERE departure_time < '10:00:00' ORDER BY departure_time
SELECT * FROM flights WHERE to_airport = 'PHL' AND from_airport = 'DAL'
SELECT * FROM flights WHERE flight_id IN ( SELECT flight_id FROM flights WHERE departure_airport = 'KCLT' AND arrival_airport = 'CLE' AND day = ' wednesday' )
SELECT * FROM flight WHERE to_airport = 'PHL' AND arrival_time BETWEEN '08:00:00' AND '12:00:00'
SELECT city FROM city WHERE airline_code = 'CA'
SELECT * FROM flights JOIN flight_legs ON flights.flight_id = flight_legs.flight_id JOIN airports ON flights.from_airport = airports.airport_code WHERE airports.city_name = 'Baltimore'
SELECT * FROM flights WHERE departure_airport = 'SFO' AND arrival_airport = 'BOS' AND stopovers IN ('DAL', 'DFW') AND airline_code = 'DAL'
SELECT * FROM flight WHERE departure_time >= '2023-11-11 17:00:00' AND to_airport = 'BOS' AND class_type = 'economy' ```
SELECT * FROM flights WHERE to_airport = 'ATL' AND from_airport = 'BOS' ```
SELECT * FROM flights WHERE to_airport = 'CHS' AND departure_time >= '2023-10-27 10:00:00' AND departure_time <= '2023-10-27 20:00:00'
SELECT * FROM flights WHERE departure_city = 'DENVER' AND arrival_city = 'SAN FRANCISCO' OR departure_city = 'DENVER' AND arrival_city = 'PHILADELPHIA'
SELECT * FROM flights WHERE to_airport = 'JFK' AND from_airport = 'MIA' ```
SELECT DISTINCT a.airline FROM flights f JOIN flight_legs fl ON f.flight_id = fl.flight_id JOIN airports a ON fl.to_airport = a.airport_code WHERE a.city = 'Pittsburgh' AND EXISTS ( SELECT 1 FROM flight_legs fl2 JOIN airports a2 ON fl2.from_airport = a2.airport_code WHERE a2.city = 'Baltimore' )
SELECT * FROM flights WHERE to_airport = 'SFO' AND departure_time >= '2023-10-27 12:00:00' AND flight_days > 1
SELECT * FROM flights WHERE to_airport = 'BWI' AND departure_time >= '2023-10-27 00:00:00' AND departure_time <= '2023-10-27 23:59:59'
SELECT * FROM flights WHERE departure_date = '2023-10-27' AND departure_time < '0900:00:00' AND to_airport = 'ATL' AND airline_code = 'UA'
SELECT * FROM flights WHERE airline = 'American Airlines' AND departure_airport = 'JFK' AND arrival_airport = 'BNA'
SELECT * FROM flights WHERE to_airport = 'BALMD' AND departure_time BETWEEN '2023-10-20 10:00:00' AND departure_time BETWEEN '2023-10-20 14:00:00'
SELECT * FROM flights WHERE departure_airport = 'BOS' AND arrival_airport = 'DCA' AND month_number = 11 AND day_number = 11
SELECT * FROM airport WHERE airport_code = 'ORD' AND transport_type = 'BUS'
SELECT * FROM flights WHERE departure_airport = 'CHI' AND arrival_airport = 'SFO' AND flight_date BETWEEN '2023-10-27' AND '2023-10-30'
SELECT * FROM flights WHERE departure_date = '2022-05-26' AND to_airport = 'LASV' AND arrival_airport = 'BUR' AND flight_day = 'saturday' ```
SELECT * FROM flights WHERE departure_city = 'ATL' AND arrival_city = 'STL' AND arrival_time BETWEEN '22:00:00' AND '23:00:00'
SELECT * FROM flights WHERE airline = 'American Airlines' AND departure_airport = 'PHL' AND arrival_airport = 'SFO'
SELECT * FROM flights WHERE flight_day = 7 AND flight_from = 'MILW' AND flight_to = 'STL' AND departure_time = '07:00:00'
SELECT * FROM flights WHERE to_airport = 'PIT' AND from_airport = 'NYC' ```
SELECT aircraft.aircraft_code, aircraft.capacity FROM aircraft JOIN flight ON aircraft.aircraft_code = flight.aircraft_code WHERE flight.departure_time = '08:00:00' AND flight.to_airport = 'SFO' AND flight.from_airport = 'ATL'
SELECT * FROM airport_service WHERE city_code = 'SEA' AND transport_type = 'BUS' AND airport_name = 'SEA Airport'
SELECT * FROM flights WHERE to_airport = 'PIT' AND arrival_airport = 'BOS' AND round_trip_required = 'YES' AND fare_basis_code = 'economy'
SELECT * FROM flight WHERE departure_time BETWEEN '17:00:00' AND '19:00:00' AND from_airport = 'BOS' AND arrival_airport = 'ATL' AND stopovers = 0
SELECT * FROM flight WHERE departure_time BETWEEN '17:00:00' AND '18:00:00' AND to_airport = 'ATL' AND arrival_airport = 'SFO'
SELECT * FROM flights WHERE to_airport = 'BALR' AND from_airport = 'PHL'
SELECT * FROM flights WHERE to_airport = 'SFO' AND from_airport = 'DAL'
SELECT * FROM flights WHERE stop_days > 3
SELECT * FROM flight WHERE to_airport = 'DAL' AND from_airport = 'BAL' AND round_trip_required = 'yes' AND fare_basis_code = 'discounted'
SELECT * FROM flights WHERE departure_airport = 'OAK' AND arrival_airport = 'BOS' AND departure_time >= '2023-10-27 00:00:00' AND departure_time <= '2023-10-27 23:59:59'
SELECT * FROM flights WHERE date_day = 4 AND flight_id = ( SELECT flight_id FROM flights WHERE departure_time < flights.departure_time AND to_airport = 'ATL' AND from_airport = 'WAW' AND day_name = 'Thursday' )
SELECT * FROM flights WHERE departure_airport = 'DAL' AND arrival_airport = 'BOS' AND flight_date = '2023-10-27' ORDER BY departure_time ASC
SELECT * FROM flights WHERE from_airport = 'PIT' AND to_airport = 'DEN' AND flight_date >= '2023-10-27' AND flight_date <= '2023-10-30'
SELECT * FROM flights WHERE departure_date = DATE_SUB(NOW(), INTERVAL 1 DAY) AND to_airport = 'STL' AND flight_id NOT IN ( SELECT flight_id FROM flights WHERE departure_date = DATE_SUB(NOW(), INTERVAL 2 DAY) AND to_airport = 'MKE' )
SELECT * FROM flights WHERE to_airport = 'MEMPH' AND arrival_airport = 'CLT'
SELECT * FROM flights WHERE to_airport = 'PHL' AND arrival_airport = 'DFW' AND stopovers = 1
SELECT * FROM flight WHERE to_airport = 'OAK' AND from_airport = 'BOS' ```
SELECT fare_basis.fare_id, fare_basis.basis_days, fare_basis.round_trip_cost FROM fare_basis WHERE city = 'Denver' ORDER BY fare_basis.basis_days
SELECT * FROM flight WHERE to_airport = 'MSP' AND departure_time BETWEEN '2023-10-27 00:00:00' AND arrival_time BETWEEN '2023-10-27 23:59:00'
SELECT * FROM flights WHERE to_airport = 'ATL' AND from_airport = 'DEN' AND date_day = 15 AND time_interval = 'morning'
SELECT * FROM flight WHERE departure_airport = 'ATL' ORDER BY flight_id
SELECT * FROM flight WHERE to_airport = 'OAKN' AND departure_time >= '2023-12-16' AND departure_time < '2023-12-17'
SELECT * FROM flight WHERE departure_airport = 'BOS' AND arrival_airport = 'ATL'
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'BOS' AND departure_time <= '12:00:00' AND day_name = 'Thursday' AND meal_code = 'MKT' ```
SELECT * FROM flights WHERE to_airport = 'DENV' AND from_airport = 'PHL'
SELECT * FROM flights WHERE departure_airport = 'DFW' AND arrival_airport = 'PIT' AND month_number = 7 AND day_number = 8
SELECT * FROM flight WHERE airline = 'United Airlines' AND date_day = 20 AND time_interval = 'morning' ```
SELECT * FROM flights WHERE to_airport = 'PHL' AND arrival_airport = 'BWI'
SELECT * FROM flight WHERE to_airport = 'OAKN' AND from_airport = 'BOS' AND stopovers = 'DALS'
SELECT * FROM flights WHERE month_number = 4 AND day_number = 1 AND from_airport = 'SFO' AND arrival_airport = 'PIT'
SELECT * FROM flights WHERE to_airport = 'CMB' AND from_airport = 'BAL' ```
SELECT 1
SELECT * FROM flight WHERE departure_time BETWEEN '14:00:00' AND '17:00:00' AND arrival_time >= '14:00:00'
SELECT fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE flight.from_airport = 'DAL' AND flight.to_airport = 'BAL' AND fare.restriction_code = 'no_discounts'
SELECT * FROM flight WHERE flight_id = (SELECT flight_id FROM flight WHERE to_airport = 'ATL' AND departure_time = '2023-10-27 05:55:00')
SELECT * FROM flights WHERE departure_airport = 'BOS' AND arrival_airport = 'OAK' AND departure_time = '2023-10-26 08:38:00'
SELECT * FROM flights WHERE departure_day = 'saturday' AND departure_time BETWEEN '06:00:00' AND '10:00:00' AND flight_stop IN ( 'ORD' ,'IAH' )
SELECT 1
SELECT * FROM flights WHERE to_airport = 'BOS' AND from_airport = 'PHL' AND flight_days >= 1
SELECT * FROM flights WHERE airline_code = 'UA' AND departure_city = 'WA' AND arrival_city = 'DEN'
SELECT * FROM flights WHERE to_airport = 'PIT' AND arrival_airport = 'ATL'
SELECT * FROM flight_leg WHERE to_airport = 'SFO' AND leg_flight = 1
SELECT * FROM flights WHERE departure_airport = 'PHO' AND departure_time = '2023-10-27 19:00:00' AND arrival_airport = 'MIL' ```
SELECT * FROM flights WHERE departure_airline = 'Delta' AND departure_city = 'Atlanta'
SELECT code FROM code_description WHERE description = 'YYN'
SELECT * FROM flight WHERE departure_day = 'wednesday' AND departure_airport = 'ATL' AND arrival_airport = 'DCA' ORDER BY departure_time DESC
SELECT * FROM flight WHERE departure_time >= '16:00:00' AND arrival_time = '23:59:00' AND to_airport = 'BOS' AND flight_id NOT IN ( SELECT flight_id FROM flight WHERE arrival_time < '16:00:00' )
SELECT * FROM flights WHERE to_airport = 'SFO' AND arrival_airport = 'DCA'
SELECT * FROM flights WHERE departure_airport = 'BOS' AND arrival_airport = 'ATL' AND departure_date = '2023-11-07'
SELECT * FROM flight WHERE departure_time BETWEEN '2023-10-27 08:00:00' AND '2023-10-27 12:00:00' AND from_airport = 'OAK' AND to_airport = 'DEN'
SELECT * FROM flights WHERE departure_time BETWEEN '17:00:00' AND '19:00:00' AND to_airport = 'PHL' AND from_airport = 'DEN'
SELECT * FROM flights WHERE departure_date = '2022-05-26' AND to_airport = 'KBZN' AND day_name = 'Saturday' AND arrival_flight_number = 12345
SELECT * FROM flight WHERE to_airport = 'DET' AND arrival_airport = 'STL' AND departure_date = '2023-10-27'
SELECT flight_id, fare_id FROM flight WHERE to_airport = 'ATL' AND from_airport = 'PIT' AND round_trip_required = 'true' AND fare_basis_code = 'economy' ORDER BY fare_id ASC
SELECT * FROM flights WHERE to_airport = 'PHL' AND departure_time >= '2023-10-27 10:00:00' AND departure_time <= '2023-10-27 20:00:00'
SELECT COUNT(*) FROM flight WHERE flight_day = CURDATE() AND flight_direction = 'departure' AND airline = 'united' ```
SELECT * FROM flights WHERE to_airport = 'BALMD' AND arrival_airport = 'SFO' AND departure_time >= '2023-10-27 00:00:00' AND departure_time <= '2023-10-27 23:59:59'
SELECT DISTINCT a.aircraft_code, a.capacity, a.wing_span, a.engines FROM aircraft a WHERE a.airline_code = 'CA' ```
SELECT * FROM flights WHERE departure_airport = 'BAL' AND arrival_time >= '2100:00:00' ```
SELECT * FROM flight WHERE to_airport = 'PIT' AND departure_time >= '2023-10-27 00:00:00' AND departure_time <= '2023-10-27 23:59:59'
SELECT * FROM flights WHERE departure_airport = 'DEN' AND arrival_airport IN ('PIT', 'ATL')
SELECT * FROM flight WHERE to_airport = 'BALMD' AND arrival_airport = 'SFO' AND stopovers = 'DENV'
SELECT * FROM flight WHERE to_airport = 'oakland' AND arrival_airport = 'philadelphia'
SELECT * FROM flights WHERE departure_day = 'saturday' AND departure_flight_number = 12345
SELECT * FROM flights WHERE to_airport = 'LOVE' AND departure_time >= '2023-03-01' AND departure_time <= '2023-03-31'
SELECT * FROM flights WHERE departure_time >= '07:00:00' AND to_airport = 'BOS' AND aircraft_code = '767'
SELECT * FROM flights WHERE departure_time >= '2023-04-06 06:00:00' AND arrival_time <= '2023-04-06 12:00:00'
SELECT * FROM flights WHERE to_airport = 'MEMP' AND from_airport = 'MIA' AND fare_basis = 'discounted' AND round_trip_required = 'yes' ORDER BY fare_id ASC
SELECT * FROM flights WHERE flight_day = 'Wednesday' AND departure_time BETWEEN '17:00:00' AND '19:00:00'
SELECT * FROM flight_legs WHERE departure_airport = 'DAL' AND arrival_airport = 'DAL' AND time_elapsed >= 3600
SELECT * FROM flight WHERE departure_time BETWEEN '2023-04-01 00:00:00' AND '2023-04-01 12:00:00' AND from_airport = 'ATL' AND fare_basis = 'discounted'
SELECT * FROM flights WHERE flight_date = '2023-04-16' AND flight_time = '23:00:00' AND departure_airport = 'PHL' AND arrival_airport = 'BOS'
SELECT * FROM flights WHERE to_airport = 'HOU' AND arrival_airport = 'LAS' AND round_trip_required = 'YES' ```
SELECT * FROM flights WHERE to_airport = 'SANJO' AND from_airport = 'STPAUL'
SELECT COUNT(*) FROM flights WHERE aircraft_code = '734' AND class_type = 'business'
SELECT 1
SELECT * FROM flight WHERE to_airport = 'BOS' AND flight_number = 813 AND EXISTS ( SELECT 1 FROM flight WHERE departure_flight_number = 813 AND arrival_airport = 'OAK' )
SELECT * FROM flights WHERE to_airport = 'PIT' AND arrival_airport = 'NYC'
SELECT * FROM flights WHERE flight_id = 497766 AND departure_time = '2023-10-25 09:00:00'
SELECT airline FROM flights WHERE airline LIKE '%ea%'
SELECT * FROM flight WHERE airline = 'us'
SELECT * FROM airport_service WHERE city_code = 'DEN' AND transport_type = 'TRAIN'
SELECT * FROM flights WHERE to_airport = 'PHX' AND from_airport = 'DEN' AND restriction_code = 'no_discounts' AND minimum_stay = 7 AND stopovers = 1
SELECT * FROM flights WHERE departure_time BETWEEN '2023-03-15 15:00:00' AND '2023-03-15 18:00:00' AND to_airport = 'DCA' AND departure_airline = 'United Airlines'
SELECT * FROM flight WHERE to_airport = 'ORD' AND arrival_airport = 'SAN' AND aircraft_code = '737'
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'LAS' AND departure_time = '718' AND from_airport = 'NYC'
SELECT * FROM flight_leg WHERE departure_airport = 'DEN' AND arrival_airport = 'DEN'
SELECT * FROM flight WHERE to_airport = 'PIT' AND from_airport = 'DEN' OR to_airport = 'DEN' AND from_airport = 'PIT'
SELECT * FROM airport_service WHERE city_code = 'SFO'
SELECT * FROM flights WHERE departure_time < '12:00:00' AND airline_code = 'NW'
SELECT * FROM flights WHERE to_airport = 'MRT'
SELECT * FROM flights WHERE to_airport = 'DENV' AND from_airport = 'PHL'
SELECT * FROM flights WHERE to_airport = 'BOS' AND airline_code = 'LYR'
SELECT * FROM flights WHERE to_airport = 'BALR' OR from_airport = 'BALR'
SELECT * FROM flights f JOIN flight_stops fs ON f.flight_id = fs.flight_id JOIN airports a ON fs.stop_airport = a.airport_code WHERE f.restriction_code = 'ap/80' ```
SELECT fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE flight.from_airport = 'DEN' AND flight.to_airport = 'PIT' ```
SELECT * FROM flight WHERE departure_airport = 'BOS' AND arrival_airport = 'SFO' AND airline_code IN ('AA', 'UA', 'KB', 'EY', 'DL')
SELECT * FROM flights WHERE to_airport = 'PIT' AND arrival_airport = 'SFO'
SELECT * FROM flight WHERE from_airport = 'BOS' AND to_airport = 'PHL'
SELECT * FROM flights WHERE departure_time BETWEEN '15:00:00' AND '18:00:00' AND to_airport = 'DENV' AND from_airport = 'DAL' ```
SELECT * FROM flight WHERE to_airport = 'CHI' AND departure_date = '2023-06-17' AND arrival_time BETWEEN '19:00:00' AND '20:00:00'
SELECT * FROM flight WHERE arrival_time = ( SELECT MIN(arrival_time) FROM flight WHERE departure_airport = 'BOS' AND arrival_airport = 'ATL' )
SELECT * FROM flight WHERE departure_time BETWEEN '2023-10-26 17:30:00' AND '2023-10-26 20:30:00' AND to_airport = 'TOR' AND flight_id NOT IN ( SELECT flight_id FROM flight WHERE departure_time BETWEEN '2023-10-26 15:30:00' AND '2023-10-26 17:30:00' AND to_airport = 'SLC' )
SELECT * FROM flight WHERE to_airport = 'ATL' AND departure_airline = 'DAL' AND flight_id = ( SELECT flight_id FROM flight WHERE to_airport = 'PIT' AND departure_airline = 'DAL' )
SELECT * FROM flight WHERE to_airport = 'DCA' AND arrival_time = 'TUESDAY 09:00:00' ```
SELECT * FROM airport WHERE city_name = 'Washington DC'
SELECT * FROM flights WHERE departure_date = '2023-10-21' AND departure_airline = 'DENV' AND arrival_airport = 'BOS'
SELECT * FROM flights WHERE departure_airport = 'DEN' AND EXISTS ( SELECT 1 FROM flights AS f2 WHERE f2.departure_time BETWEEN DATE_SUB(f.departure_time, INTERVAL 1 DAY) AND f.departure_time AND f2.from_airport = f.to_airport )
SELECT * FROM airport_service WHERE airport_code = 'BOS' AND transport_type = 'COACH' AND city_code = 'BOS'
SELECT * FROM flights WHERE departure_time = DATE_ADD(NOW(), INTERVAL 1 DAY) AND from_airport = 'TAMPA' AND to_airport = 'MILWAKE' ```
SELECT * FROM flights WHERE departure_airport = 'TOR' AND arrival_airport = 'SAN' AND EXISTS ( SELECT 1 FROM flights WHERE departure_airport = 'DEN' AND arrival_airport = 'DEN' AND stopover = 'yes' )
SELECT * FROM flight WHERE to_airport = 'SFO' AND departure_time >= '2023-12-01' AND departure_time <= '2023-12-31'
SELECT * FROM flights WHERE departure_time BETWEEN '2023-10-27 12:00:00' AND '2023-10-27 12:00:00' AND to_airport = 'BWI' AND restriction_code = 'no_discounts' AND maximum_stay = 7
SELECT * FROM flights WHERE departure_date >= DATE_SUB(NOW(), INTERVAL 2 DAY) AND arrival_date = '2023-10-27' AND to_airport = 'DENV' AND to_airport = 'PHL'
SELECT fare.to_airport, fare.restriction_code, fare.round_trip_cost FROM fare WHERE flight_id = ( SELECT flight_id FROM flight WHERE from_airport = 'PIT' AND to_airport = 'ATL' )
SELECT * FROM flight_leg WHERE to_airport = 'ATL' AND airline_code = 'AA'
SELECT * FROM flight WHERE departure_city = 'BOS' AND arrival_city = 'SFO' AND flight_date = (SELECT MAX(flight_date) FROM flight WHERE departure_city = 'BOS' AND arrival_city = 'SFO')
SELECT * FROM flights WHERE departure_airport = 'CLT' AND arrival_airport = 'ATL' AND day = 'tuesday' ```
SELECT fare.to_airport, fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE flight.from_airport = 'OAK' AND flight.to_airport = 'ATL' AND fare.class_type = 'First Class'
SELECT * FROM flights WHERE to_airport = 'NSM' AND arrival_airport = 'SEA' AND departure_date >= '2023-10-27' AND departure_date <= '2023-10-30'
SELECT * FROM flight WHERE class_of_service = 'First Class' AND from_airport = 'ATL' AND to_airport = 'DEN' ```
SELECT * FROM flights WHERE to_airport = 'NEWARK' AND arrival_airport = 'CLEVELAND' AND day_name = 'FRIDAY'
SELECT fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE flight.from_airport = 'IND' AND flight.to_airport = 'SEA' AND fare.round_trip_required = 'true'
SELECT flight_id, fare_id FROM flight WHERE departure_airport = 'SFO' AND arrival_airport = 'PIT' AND day = 'MONDAY' AND class_of_service = 'FIRST CLASS'
SELECT * FROM flights WHERE departure_time = '2023-10-27 08:00:00' AND to_airport = 'ORD' AND flight_day = 'Saturday' AND aircraft_code_sequence = '777'
SELECT * FROM flights WHERE flight_date = '2023-10-27' AND to_airport = 'PIT' AND departure_time BETWEEN '19:00:00' AND '22:00:00' AND airline = 'DELTA'
SELECT * FROM flight WHERE departure_date = '2023-12-27' AND from_airport = 'INDC' AND arrival_airport = 'ORDL'
SELECT * FROM flights WHERE departure_city = 'SAN FRANCISCO' AND arrival_city = 'PHILADELPHIA' AND month = 'September' ```
SELECT flight.flight_id, flight.departure_time FROM flight JOIN flight_stop ON flight.flight_id = flight_stop.flight_id JOIN city ON flight_stop.stop_airport = city.city_name WHERE city.city_name = 'Boston' AND flight.departure_time = ( SELECT MIN(departure_time) FROM flight JOIN flight_stop ON flight.flight_id = flight_stop.flight_id JOIN city ON flight_stop.stop_airport = city.city_name WHERE city.city_name = 'Oakland' )
SELECT ground_service.airport_code, ground_service.transport_type, ground_service.city_code, ground_service.ground_fare FROM ground_service WHERE ground_service.city_code = 'WA' ```
SELECT * FROM flights WHERE to_airport = 'WAI' AND arrival_airport = 'SFO'
SELECT 1
SELECT * FROM flights WHERE day_name = 'Friday' AND departure_time BETWEEN '17:00:00' AND '19:00:00'
SELECT * FROM flight WHERE departure_city = 'St. Paul' AND arrival_city = 'Kansas City' AND flight_date = '2023-10-27' AND meal_code = 'MKT' ```
SELECT * FROM flights WHERE departure_airport = 'LGB' AND arrival_airport = 'STL' AND stopovers = 'no_discounts' AND minimum_stay = 7
SELECT time_elapsed FROM flight WHERE to_airport = 'KCLT' AND from_airport = 'STL' AND flight_id = ( SELECT flight_id FROM flight WHERE to_airport = 'KCLT' AND departure_time >= '2023-10-27 12:00:00' AND from_airport = 'STL' )
SELECT * FROM flights WHERE to_airport = 'LAX' AND from_airport = 'PIT' AND flight_date BETWEEN '2023-04-01' AND '2023-04-30'
SELECT * FROM flights WHERE to_airport = 'DENV' AND from_airport = 'PHL' AND flight_days BETWEEN 1 AND 7
SELECT * FROM flights WHERE from_airport = 'PHL' AND to_airport = 'SFO'
SELECT * FROM flight WHERE departure_city = 'DENVER' AND arrival_city = 'SAN FRANCISCO' AND date(departure_time) = '2023-10-15' ```
SELECT * FROM flights WHERE departure_city = 'DEN' AND arrival_city = 'SLC'
SELECT class_of_service FROM flight WHERE airline = 'TWA'
SELECT * FROM flights WHERE flight_stop IN ( 'BWI' ) AND departure_time BETWEEN '13:00:00' AND '17:00:00' ```
SELECT * FROM flight WHERE departure_airport = 'DAL' AND arrival_airport = 'HOU' ORDER BY date_day, time_interval
SELECT * FROM flights WHERE departure_airport = 'BAL' AND arrival_airport = 'SEA' AND stopover IN ('MIN') ```
SELECT * FROM flights WHERE departure_airport = 'SFO' AND arrival_airport = 'BOS' AND has_stopover = 1 AND stopover_city = 'DAL'
SELECT airport.airport_name, distance FROM airport JOIN flight_leg ON airport.airport_code = flight_leg.from_airport WHERE flight_leg.leg_flight = 1
SELECT airline FROM flights WHERE airline_code = 'DL'
SELECT * FROM flights WHERE arrival_time >= (SELECT max(arrival_time) FROM flights)
SELECT * FROM flight WHERE arrival_airport = 'MRT'
SELECT * FROM flights WHERE departure_city = 'New York' AND arrival_city = 'Los Angeles' AND EXISTS ( SELECT 1 FROM flights AS flight WHERE flight.departure_city = 'Milwaukee' )
SELECT * FROM flights WHERE airline_code = 'AA' AND departure_airport = 'PHL' AND arrival_airport = 'DAL'
SELECT * FROM flights WHERE to_airport = 'WCIA' AND departure_city = 'Cincinnati'
SELECT * FROM flight WHERE date_day = '01' AND to_airport = 'SFO' AND departure_time = '2023-10-27 00:00:00'
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'BOS' AND from_airport = 'WAI' AND flight_days = 1 AND fare_basis = 'discounted'
SELECT * FROM flight WHERE departure_time >= DATE_SUB(NOW(), INTERVAL 1 DAY) AND to_airport = 'SFO' ORDER BY departure_time DESC
SELECT * FROM airport_service WHERE city_code = 'MIN' AND transport_type = 'BUS'
SELECT * FROM flight WHERE aircraft_code = 'M80'
SELECT * FROM flights WHERE departure_time < '9:00:00' ```
SELECT * FROM flight WHERE fare_basis = 'discounted' AND from_airport = 'DALLAS' AND to_airport = 'BALtimore'
SELECT * FROM airport WHERE city_name = 'Tampa'
SELECT * FROM flights WHERE departure_date = CURDATE()
SELECT * FROM flight WHERE to_airport = 'ATL' AND from_airport = 'BAL' AND round_trip_required = 'yes' AND fare_basis_code = 'discounted'
SELECT * FROM flights WHERE departure_airport = 'BAL' AND arrival_airport = 'DAL' AND month = 7 AND day = 29
SELECT * FROM flight WHERE to_airport = 'HOU' AND arrival_airport = 'LAS' ```
SELECT * FROM flight WHERE to_airport = 'JFK' AND departure_time = '2023-10-27' AND airline = 'Delta'
SELECT * FROM flight WHERE to_airport = 'SFO' AND arrival_airport = 'DEN' ```
SELECT * FROM flights WHERE to_airport = 'DALLAS' AND from_airport = 'TAMPA'
SELECT * FROM flight WHERE departure_airport = 'DEN' AND arrival_airport = 'SFO' AND airline_code = 'UA' AND flight_day >= 1 AND EXISTS ( SELECT * FROM flight WHERE departure_airport = 'DEN' AND arrival_airport = 'SFO' AND flight_day > 1 AND departure_airline = 'UA' )
SELECT * FROM flights WHERE to_airport = 'BALtimore' AND from_airport = 'PHIladelphia'
SELECT * FROM flights WHERE flight_date = '2023-10-22' AND from_airport = 'PHOENIX' AND to_airport = 'DETROIT'
SELECT * FROM flights WHERE departure_airport = 'TOR' AND arrival_airport = 'SAN' AND EXISTS ( SELECT 1 FROM flight_stops WHERE departure_airline = 'XX' AND arrival_airline = 'YY' AND stop_days = 1 )
SELECT flight_id, departure_time FROM flight WHERE departure_airport = 'ATL' AND arrival_airport = 'DEN' AND meal_code IS NOT NULL ORDER BY departure_time ASC
SELECT * FROM flight WHERE to_airport = 'SFO' AND arrival_airport = 'ATL'
SELECT * FROM flights WHERE to_airport = 'DCA' AND arrival_time >= '2023-12-01' AND arrival_time <= '2023-12-31'
SELECT * FROM flight WHERE departure_airport = 'BWI' AND arrival_airport = 'SFO' AND flight_date = '2023-10-27' AND flight_time >= '18:00:00' AND day_name = 'Friday'
SELECT * FROM flights WHERE to_airport = 'BOS' AND arrival_airport = 'SFO'
SELECT * FROM flight WHERE departure_airline = 'Eastern' AND departure_time < '21:00:00' AND aircraft_code IN ( SELECT aircraft_code FROM aircraft WHERE manufacturer LIKE '%Eastern%'
SELECT * FROM flights WHERE departure_time = 'tomorrow' AND from_airport = 'columbus' AND to_airport = 'nashville'
SELECT * FROM flight WHERE departure_airport = 'SFO' AND arrival_airport = 'BOS' AND month_number = 8 AND day_number = 31
SELECT * FROM flight WHERE flight_basis = 'discounted' AND from_airport = 'JFK' AND to_airport = 'MIA' AND day_name = 'Tuesday'
SELECT * FROM flights WHERE departure_airport = 'PHO' AND arrival_airport = 'MIL' AND airline = 'AMERICAN AIRLINES' AND date_day = 'WED' AND flight_id IN ( SELECT flight_id FROM flight_legs WHERE flight_id IN ( SELECT flight_id FROM flights WHERE departure_airport = 'PHO' AND arrival_airport = 'MIL' AND date_day = 'WED' AND airline = 'AMERICAN AIRLINES' ) )
SELECT * FROM flights WHERE to_airport = 'TAMPA' AND from_airport = 'CINcinnati' AND flight_days BETWEEN '2023-10-28' AND '2023-10-30'
SELECT ground_service.airport_code, ground_service.transport_type, ground_service.city_code, ground_service.ground_fare FROM ground_service WHERE ground_service.city_code = 'PHL'
SELECT * FROM flights WHERE to_airport = 'DCA' AND arrival_time >= '2023-10-27 10:00:00' AND class_type = 'Economy'
SELECT * FROM flight WHERE to_airport = 'BOS' AND arrival_airport = 'ATL' OR FROM flight WHERE from_airport = 'ATL' AND arrival_airport = 'BOS' ```
SELECT * FROM flight WHERE to_airport = 'DAL' AND arrival_airport = 'SFO' ```
SELECT distance FROM flight WHERE from_airport = 'DFW' AND to_airport = 'DAL' AND distance IS NOT NULL
SELECT * FROM flight WHERE to_airport = 'SAN_JOSE' AND arrival_airport = 'SLC' AND round_trip_required = 'true' ORDER BY fare_id
SELECT fare FROM flight WHERE to_airport = 'SFO' AND from_airport = 'DFW' AND flight_id = 852
SELECT * FROM flights WHERE flight_date = '2023-10-27' AND departure_airport = 'PIT' AND arrival_airport = 'PHL' AND arrival_time >= '18:00:00'
SELECT * FROM flight WHERE to_airport = 'DALLAS' AND from_airport = 'BALtimore' ORDER BY fare_basis_code
SELECT * FROM flight WHERE departure_time BETWEEN '06:00:00' AND '10:00:00' AND from_airport = 'BOS' AND arrival_airport = 'DEN'
SELECT flight_id, fare_id FROM flight WHERE departure_city = 'DEN' AND arrival_city = 'ATL' ORDER BY fare_id
SELECT * FROM flights WHERE departure_time BETWEEN '07:00:00' AND '10:00:00' AND to_airport = 'BALtimore' AND aircraft_code = 'DAL' AND flight_days = '02'
SELECT * FROM flights WHERE departure_airport = 'CHI' AND arrival_airport = 'NSM'
SELECT * FROM flights WHERE date_day = 1 AND month_number = 1 AND flight_id IN ( SELECT flight_id FROM flight WHERE from_airport = 'BOS' AND arrival_time >= '1992-01-01 00:00:00' AND arrival_time <= '1992-01-31 23:59:59' )
SELECT * FROM flights WHERE flight_date = '2023-10-27' AND flight_from = 'SFO' AND flight_to = 'DEN' AND day_of_week = 'Thursday'
SELECT COUNT(*) FROM flights WHERE departure_city = 'BOS' AND arrival_city = 'ATL' AND stopovers = 0
SELECT * FROM flight WHERE to_airport = 'OAKN' AND from_airport = 'BOS' AND date_day = 1 AND time_interval = 'DAY'
SELECT * FROM flights WHERE to_airport = 'LAS' AND departure_airline = 'EVS' AND stopovers = 0 AND maximum_stay = 72 AND flight_id NOT IN ( SELECT flight_id FROM flights WHERE to_airport = 'JFK' AND departure_airline = 'EVS' )
SELECT * FROM flights WHERE departure_time < '05:00:00' AND from_airport = 'BOS' AND flight_day = 'Thursday' ```
SELECT * FROM flight WHERE departure_city = 'Philadelphia' AND arrival_city = 'Dallas' AND stopovers IN ('Atlanta')
SELECT * FROM flights WHERE departure_date = '2023-10-27' AND departure_airport = 'STL' AND arrival_airport = 'YYZ' AND day(departure_time) = 1
SELECT DISTINCT a.airline_code FROM flights f JOIN airlines a ON f.airline_flight = a.airline_code WHERE f.from_airport = 'PIT' ```
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'DENV' AND from_airport = 'PHL' AND flight_id = 'UA270'
SELECT * FROM flight WHERE airline_code IN ( SELECT airline FROM flight WHERE departure_city = 'Pittsburgh' )
SELECT * FROM flight WHERE departure_airport = 'MEM' AND arrival_airport = 'TAC' AND EXISTS ( SELECT 1 FROM flight WHERE departure_airport = 'LAX' AND arrival_airport = 'TAC' )
SELECT * FROM flights JOIN flight_legs ON flights.flight_id = flight_legs.flight_id WHERE flights.to_airport = 'PIT' AND flights.from_airport = 'PHL' AND EXISTS ( SELECT 1 FROM fares WHERE fares.flight_id = flights.flight_id AND fares.from_airport = 'PIT' AND fares.to_airport = 'PHL' )
SELECT * FROM flights WHERE to_airport = 'TOR' AND from_airport = 'SFO' ```
SELECT fare_id, fare_basis_code, round_trip_cost FROM flight WHERE to_airport = 'DAL' AND departure_time = '2023-10-27 19:00:00' AND flight_number = '217'
SELECT * FROM flight WHERE departure_time >= '18:00:00' AND departure_time < '20:00:00' AND flight_day = 'Wednesday' AND from_airport = 'BOS' AND arrival_airport = 'ATL'
SELECT * FROM flights WHERE departure_time BETWEEN '17:00:00' AND '19:00:00' AND to_airport = 'IND' AND airline_code = 'US'
SELECT * FROM flights WHERE departure_date = '2023-10-26' AND to_airport = 'BOS' AND arrival_airport = 'DEN'
SELECT * FROM flight WHERE to_airport = 'PIT' AND arrival_airport = 'NYC' AND flight_days = '2023-10-27'
SELECT * FROM flights WHERE to_airport = 'MILW' AND arrival_airport = 'MTL'
SELECT flight.flight_id, flight.departure_time FROM flight WHERE departure_time >= '2023-10-27 00:00:00' ORDER BY flight.departure_time ASC
SELECT flight_id FROM flight WHERE to_airport = 'MSP' AND arrival_time >= '2023-06-26 00:00:00' AND arrival_time <= '2023-06-26 23:59:59'
SELECT * FROM flights WHERE departure_city = 'Philadelphia' AND arrival_city = 'Dallas' AND stopovers = 'Hartfield'
SELECT DISTINCT airline FROM flight WHERE departure_airport = 'PIT' AND arrival_airport = 'SFO' AND day = 'MONDAY' AND month = 'SEPTEMBER' AND year = 2023
SELECT * FROM flights WHERE to_airport = 'BOS' AND arrival_airport = 'SFO' AND flight_date >= '2023-01-01' AND flight_date <= '2023-12-31'
SELECT * FROM flights WHERE departure_airport = 'BOS' AND arrival_airport = 'DEN' AND date(departure_time) = '2023-07-29'
SELECT * FROM flight WHERE to_airport = 'PIT' AND from_airport = 'BAL' AND aircraft_code IN ( SELECT aircraft_code FROM aircraft WHERE manufacturer = 'Airbus' )
SELECT * FROM flight WHERE flight_id IN ( SELECT flight_id FROM flight WHERE to_airport = 'BOS' AND departure_time = '2023-10-21 09:00:00' ) AND aircraft_code = 'DAL'
SELECT * FROM flights WHERE flight_id = 417 AND departure_airport = 'CIN' AND arrival_airport = 'DAL'
SELECT * FROM flights WHERE to_airport = 'DALLAS' AND arrival_airport = 'ATLANTA'
SELECT * FROM airport_service WHERE airport_code = 'BOS' AND transport_type = 'BUS'
SELECT * FROM flights WHERE to_airport = 'SFO' AND from_airport = 'LAS'
SELECT * FROM flight WHERE to_airport = 'HOU' AND departure_date = '2023-10-27' AND airline = 'AMERICAN AIRLINES'
SELECT fare.round_trip_cost FROM flight JOIN fare ON flight.flight_id = fare.flight_id WHERE flight.to_airport = 'ATL' AND flight.departure_time >= '2023-10-27 08:00:00' AND flight.departure_time <= '2023-10-27 17:00:00'
SELECT * FROM flights WHERE to_airport = 'DENV' AND from_airport = 'PIT' AND flight_days >= 1
SELECT * FROM flight WHERE departure_time BETWEEN '19:00:00' AND '23:00:00' AND to_airport = 'SFO' AND class_of_service = 'economy'
SELECT * FROM flight WHERE to_airport = 'SEA' AND arrival_airport = 'MSP' AND flight_id IN ( SELECT flight_id FROM fare WHERE to_airport = 'SEA' AND arrival_airport = 'MSP' AND round_trip_required = 'yes' )
SELECT * FROM airport_service WHERE airport_code = 'PHX' AND direction = 'to' AND city_code = 'PHOENIX'
SELECT * FROM flights WHERE departure_time = '2023-06-03 00:00:00' AND from_airport = 'SAN_JOSE' AND to_airport = ' NASHVILLE'
SELECT * FROM flights WHERE flight_day = 'saturday' AND from_airport = 'DALLAS' AND arrival_airport = 'SAN FRANCISCO'
SELECT * FROM flights WHERE departure_airport = 'DEN' AND arrival_airport = 'PIT' AND fare_basis = 'discounted' AND round_trip_required = 'true' ORDER BY fare_id
SELECT * FROM flights WHERE departure_airport = 'SAN_DIEGO' AND arrival_airport = 'DULLS' AND aircraft_code = '767'
SELECT DISTINCT f.flight_id, f.airline_flight, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.distance FROM flights f JOIN flight_stops fs ON f.flight_id = fs.flight_id JOIN cities c ON fs.stop_airport = c.airport_code WHERE c.city_name = 'Boston' AND c.country_name = 'United States' AND EXISTS ( SELECT * FROM airlines a WHERE a.airline_code = f.airline_flight )
SELECT * FROM flight WHERE to_airport = 'DAL' AND departure_time < '12:00:00' ```
