json.sensor_readings @sensor_readings do |sensor_reading|
  json.sensor do
    json.id sensor_reading.sensor.id
    json.uuid sensor_reading.sensor.uuid
    json.name sensor_reading.sensor.name
    json.sensor_type do
      json.id sensor_reading.sensor.sensor_type.id
      json.name sensor_reading.sensor.sensor_type.name
      json.unit sensor_reading.sensor.sensor_type.unit
      json.pow10multi sensor_reading.sensor.sensor_type.pow10multi
    end
  end
  json.sensor_value sensor_reading.sensorvalue
  json.date_time sensor_reading.date_time
end