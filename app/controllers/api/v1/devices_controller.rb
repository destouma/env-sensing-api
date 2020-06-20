class Api::V1::DevicesController < ApplicationController

  # GET /api/v1/devices
  # GET /api/v1/devices.json
  def index
    @devices = Device.all
  end

end
