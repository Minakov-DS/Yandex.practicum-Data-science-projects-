SELECT
    aircrafts.model,
    COUNT(flights.flight_id) AS flights_amount
FROM
    flights
    INNER JOIN aircrafts ON flights.aircraft_code = aircrafts.aircraft_code
WHERE
    CAST(departure_time AS date) BETWEEN '2018-09-01' AND '2018-09-30'
GROUP BY
    aircrafts.model