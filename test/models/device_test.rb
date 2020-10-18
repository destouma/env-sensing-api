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
# Indexes
#
#  index_devices_on_uuid  (uuid) UNIQUE
#
require 'test_helper'

class DeviceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
