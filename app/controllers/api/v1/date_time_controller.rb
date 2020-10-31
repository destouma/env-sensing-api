class Api::V1::DateTimeController < ApplicationController

  def current_date_time
    current_date_time = Time.now.utc
    render json: { current_date_time: current_date_time}
  end
end
