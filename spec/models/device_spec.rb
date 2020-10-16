require 'rails_helper'

RSpec.describe Device, type: :model do
  it 'creates a device class' do
    device = Device.new
    expect(device).to be_kind_of(Device)
  end
end
