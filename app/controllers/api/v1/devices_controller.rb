class Api::V1::DevicesController < ApplicationController

  # GET /api/v1/devices
  # GET /api/v1/devices.json
  def index
    @devices = Device.all
  end

  def create
    dev = Device.where(uuid: params[:uuid]).first
    if dev
      render json: { message: "Error: duplicate device uuid" }, status: :bad_request
    else
      @device = Device.new()
      @device.name  = params[:name]
      @device.uuid = params[:uuid]
      @device.description = params[:description]
      if @device.save!
         render json: @device, status: :ok
      else
        render json: { message: "Error: impossible to save device" }, status: :bad_request
      end
    end

  end

end
