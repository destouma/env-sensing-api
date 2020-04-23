class Api::V1::SensorsController < ApplicationController
  before_action :set_api_v1_sensor, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/sensors
  # GET /api/v1/sensors.json
  def index
    @sensors = Sensor.all
  end

  # GET /api/v1/sensors/1
  # GET /api/v1/sensors/1.json
  def show
  end

  # GET /api/v1/sensors/new
  def new
  end

  # GET /api/v1/sensors/1/edit
  def edit
  end

  # POST /api/v1/sensors
  # POST /api/v1/sensors.json
  def create
  end

  # PATCH/PUT /api/v1/sensors/1
  # PATCH/PUT /api/v1/sensors/1.json
  def update
  end

  # DELETE /api/v1/sensors/1
  # DELETE /api/v1/sensors/1.json
  def destroy
  end

end
