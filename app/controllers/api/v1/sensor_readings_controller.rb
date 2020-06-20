class Api::V1::SensorReadingsController < ApplicationController

  # GET /api/v1/sensor_readings
  # GET /api/v1/sensor_readings.json
  def index
    @sensor_readings =SensorReading.all
  end

  # POST /api/v1/sensor_readings
  # POST /api/v1/sensor_readings.json
  def create
      sensor = Sensor.where(uuid: params[:sensor_uuid]).first
      @sensor_reading = SensorReading.new()
      @sensor_reading.sensorvalue  = params[:sensor_value]
      @sensor_reading.sensor_id = sensor.id
      @sensor_reading.save!
  end

end
