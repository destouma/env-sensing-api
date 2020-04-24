# == Schema Information
#
# Table name: devices
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  uuid        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Device < ApplicationRecord
  has_many :sensors
end
