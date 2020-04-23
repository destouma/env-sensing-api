class Api::V1::DevicesController < ApplicationController

  # GET /api/v1/devices
  # GET /api/v1/devices.json
  def index
    @devices = Device.all
  end

  # GET /api/v1/devices/1
  # GET /api/v1/devices/1.json
  def show
  end

  # GET /api/v1/devices/new
  def new
  end

  # GET /api/v1/devices/1/edit
  def edit
  end

  # POST /api/v1/devices
  # POST /api/v1/devices.json
  def create
  end

  # PATCH/PUT /api/v1/devices/1
  # PATCH/PUT /api/v1/devices/1.json
  def update
  end

  # DELETE /api/v1/devices/1
  # DELETE /api/v1/devices/1.json
  def destroy
  end

end
