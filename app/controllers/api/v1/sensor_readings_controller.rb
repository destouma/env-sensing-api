class Api::V1::SensorReadingsController < ApplicationController

  # GET /api/v1/sensor_readings
  # GET /api/v1/sensor_readings.json
  # GET /api/v1/sensor_readings.json?sensor_uuid=xxx
  def index
    if params[:sensor_uuid]
      sensor = Sensor.where(uuid: params[:sensor_uuid]).first
      if sensor
        @sensor_readings = SensorReading.where(sensor_id: sensor.id)
      else
        render json: { message: "Error: sensor not found" }, status: :bad_request
      end
    else
      @sensor_readings = SensorReading.all
    end
  end

  # POST /api/v1/sensor_readings
  # POST /api/v1/sensor_readings.json
  def create
    sensor = Sensor.where(uuid: params[:sensor_uuid]).first
    if sensor
      @sensor_reading = SensorReading.new()
      @sensor_reading.sensorvalue  = params[:sensor_value]
      @sensor_reading.sensor_id = sensor.id
      if @sensor_reading.save!
        render json: @sensor_reading, status: :ok
      else
        render json: { message: "Error: impossible to save reading" }, status: :bad_request
      end
    else
      render json: { message: "Error: sensor not found" }, status: :bad_request
    end
  end

end
