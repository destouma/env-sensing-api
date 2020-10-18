class Api::V1::SensorsController < ApplicationController

  # GET /api/v1/sensors
  # GET /api/v1/sensors.json
  def index
    @sensors = Sensor.all
  end

  def create
    device = Device.find(params[:device_id])
    sensor_type = SensorType.find(params[:sensor_type_id])

    if device
      if sensor_type
        sen = Sensor.where(uuid: params[:uuid]).first
        if sen
          render json: { message: "Error: duplicate sensor uuid" }, status: :bad_request
        else
          @sensor = Sensor.new()
          @sensor.name  = params[:name]
          @sensor.uuid = params[:uuid]
          @sensor.description = params[:description]
          @sensor.device = device
          @sensor.sensor_type = sensor_type
          if  @sensor.save!
            render json: @sensor, status: :ok
          else
            render json: { message: "Error: sensor type not foundimpossible to save sensor" }, status: :bad_request
          end
        end
      else
        render json: { message: "Error: sensor type not found" }, status: :bad_request
      end
    else
      render json: { message: "Error: device not found" }, status: :bad_request
    end
  end
end
