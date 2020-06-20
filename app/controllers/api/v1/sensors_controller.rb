class Api::V1::SensorsController < ApplicationController

  # GET /api/v1/sensors
  # GET /api/v1/sensors.json
  def index
    @sensors = Sensor.all
  end

end
