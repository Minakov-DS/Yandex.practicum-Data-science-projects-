SELECT
    Sub.city AS city,
    AVG(Sub.flights_amount) AS average_flights
FROM (
    SELECT
        airports.city AS city,
        EXTRACT(day FROM flights.arrival_time) AS days,
        COUNT(flights.flight_id) AS flights_amount
    FROM
        airports
        INNER JOIN flights ON airports.airport_code = flights.arrival_airport
    WHERE
        CAST(flights.arrival_time AS date) BETWEEN '2018-08-01' AND '2018-08-31'
    GROUP BY
    city,
    days
) AS Sub
GROUP BY
    Sub.city