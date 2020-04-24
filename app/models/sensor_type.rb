# == Schema Information
#
# Table name: sensor_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  pow10multi :integer
#  unit       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SensorType < ApplicationRecord
  has_many :sensors
end
