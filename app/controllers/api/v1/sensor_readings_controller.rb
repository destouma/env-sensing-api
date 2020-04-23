class Api::V1::SensorReadingsController < ApplicationController

  # GET /api/v1/sensor_readings
  # GET /api/v1/sensor_readings.json
  def index
    @sensor_readings =SensorReading.all
  end

  # GET /api/v1/sensor_readings/1
  # GET /api/v1/sensor_readings/1.json
  def show
  end

  # GET /api/v1/sensor_readings/new
  def new
  end

  # GET /api/v1/sensor_readings/1/edit
  def edit
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

  # PATCH/PUT /api/v1/sensor_readings/1
  # PATCH/PUT /api/v1/sensor_readings/1.json
  def update
  end

  # DELETE /api/v1/sensor_readings/1
  # DELETE /api/v1/sensor_readings/1.json
  def destroy
  end

end
