WITH BIKE AS(

    SELECT 

    
    START_STATION_ID,
    START_STATION_NAME,
    START_LAT,
    START_LNG


    FROM {{ source('DEMO', 'BIKE') }}

    WHERE BIKE_ID != 'ride_id'

    

)

SELECT *
FROM BIKE