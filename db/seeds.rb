# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SensorReading.delete_all
Sensor.delete_all
Device.delete_all

type_temp = SensorType.create(:name => 'Temperature', :unit => 'C', :pow10multi => -2)
type_pres = SensorType.create(:name => 'Pressure', :unit => 'Pa', :pow10multi => -2)
type_batt = SensorType.create(:name => 'Battery Level', :unit => '%', :pow10multi => 0)

device = Device.create(:uuid => "123-123-000-000", :name => "Test Device", :description => "Test Device ")
sensor_temp = Sensor.create(:uuid => "123-123-000-001", :name => "Temperature Sensor", :description => "Temperature Sensor", :device => device, :sensor_type => type_temp)
sensor_pres = Sensor.create(:uuid => "123-123-000-002", :name => "Pressure Sensor", :description => "Pressure Sensor", :device => device, :sensor_type => type_pres)
sensor_batt = Sensor.create(:uuid => "123-123-000-003", :name => "Battery Level Sensor", :description => "Battery Level Sensor", :device => device, :sensor_type => type_batt)
