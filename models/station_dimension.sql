WITH BIKE AS(

    SELECT 

    
    START_STATIO_ID,
    START_STATION_NAME,
    START_LAT,
    START_LNG

    FROM {{ ref('stg_bike') }}

    WHERE RIDE_ID != 'ride_id'

    

)

SELECT *
FROM BIKE