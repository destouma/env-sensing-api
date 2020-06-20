class Api::V1::SensorTypesController < ApplicationController

  # GET /api/v1/sensor_types
  # GET /api/v1/sensor_types.json
  def index
    @sensor_types = SensorType.all
  end

end
