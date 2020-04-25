class Api::V1::DeviceReadingsController < ApplicationController

  # POST /api/v1/device_readings
  # POST /api/v1/device_readings.json
  def create
    device = Device.where(uuid: params[:device_uuid]).first

    sensors_readings = params[:sensor_readings]

    sensors_readings.each do |reading|
      sensor = Sensor.where(uuid: reading["sensor_uuid"]).first
      @sensor_reading = SensorReading.new()
      @sensor_reading.sensorvalue  = reading["sensor_value"]
      @sensor_reading.sensor_id = sensor.id
      @sensor_reading.save!
    end

  end
end
