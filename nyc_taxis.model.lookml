- connection: bigquery_publicdata

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project


- explore: nyc_taxi_trips
  sql_always_where: |
    ${location_valid} 
    AND ${fare}/${trip_distance} BETWEEN 2 AND 10
    
