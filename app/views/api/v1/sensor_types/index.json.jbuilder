json.sensor_types @sensor_types do |sensor_type|
  json.id sensor_type.id
  json.name sensor_type.name
  json.unit sensor_type.unit
  json.pow10multi sensor_type.pow10multi
end