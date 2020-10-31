# == Schema Information
#
# Table name: sensor_readings
#
#  id          :bigint           not null, primary key
#  date_time   :datetime
#  sensorvalue :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  sensor_id   :bigint
#
# Indexes
#
#  index_sensor_readings_on_sensor_id  (sensor_id)
#
# Foreign Keys
#
#  fk_rails_...  (sensor_id => sensors.id)
#
require 'rails_helper'

RSpec.describe SensorReading, type: :model do
end
