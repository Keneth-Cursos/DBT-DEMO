WITH daily_weather as(

    SELECT
    
    date(TIME) AS daily_weather,
    WEATHER,
    TEMP,
    PRESSURE,
    HUMIDITY,
    CLOUDS


    FROM {{source('DEMO','WEATHER')}}

    
),

daily_weather_agg as (

    SELECT

    daily_weather,
    WEATHER,
    ROUND(AVG(TEMP),2) AS AVG_TEMP,
    ROUND(AVG(PRESSURE),2) AS AVG_PRESSURE,
    ROUND(AVG(HUMIDITY),2) AS AVG_HUMIDITY,
    ROUND(AVG(CLOUDS),2) AS AVG_CLOUDS

    FROM daily_weather

    GROUP BY daily_weather, WEATHER

    qualify ROW_NUMBER() OVER (PARTITION BY daily_weather ORDER BY count(WEATHER) desc) = 1

)

select *
from daily_weather_agg