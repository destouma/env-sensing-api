class AddFkToSensor < ActiveRecord::Migration[5.1]
  def change
    add_reference :sensors, :device, foreign_key: true
    add_reference :sensors, :sensor_type, foreign_key: true
  end
end
