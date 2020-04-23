class Api::V1::SensorTypesController < ApplicationController

  # GET /api/v1/sensor_types
  # GET /api/v1/sensor_types.json
  def index
    @sensor_types = SensorType.all
  end

  # GET /api/v1/sensor_types/1
  # GET /api/v1/sensor_types/1.json
  def show
  end

  # GET /api/v1/sensor_types/new
  def new
  end

  # GET /api/v1/sensor_types/1/edit
  def edit
  end

  # POST /api/v1/sensor_types
  # POST /api/v1/sensor_types.json
  def create
  end

  # PATCH/PUT /api/v1/sensor_types/1
  # PATCH/PUT /api/v1/sensor_types/1.json
  def update
  end

  # DELETE /api/v1/sensor_types/1
  # DELETE /api/v1/sensor_types/1.json
  def destroy
  end

end
