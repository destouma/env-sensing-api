class Sensor < ApplicationRecord
  belongs_to :device
  belongs_to :sensor_type
  has_many :sensor_readings
end
