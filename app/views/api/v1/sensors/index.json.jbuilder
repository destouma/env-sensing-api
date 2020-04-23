json.sensors @sensors do |sensor|
  json.id sensor.id
  json.uuid sensor.uuid
  json.name sensor.name
  json.description sensor.description
  json.device do
    json.id sensor.device.id
    json.uuid sensor.device.uuid
    json.name sensor.device.name
    json.description sensor.device.description
  end
  json.sensor_type do
    json.id sensor.sensor_type.id
    json.name sensor.sensor_type.name
    json.unit sensor.sensor_type.unit
    json.pow10multi sensor.sensor_type.pow10multi
  end
end