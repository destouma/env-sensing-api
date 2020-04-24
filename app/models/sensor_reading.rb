# == Schema Information
#
# Table name: sensor_readings
#
#  id          :bigint           not null, primary key
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
class SensorReading < ApplicationRecord
  belongs_to :sensor
end
