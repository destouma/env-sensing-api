class AddFkToSensorReading < ActiveRecord::Migration[5.1]
  def change
    add_reference :sensor_readings, :sensor, foreign_key: true
  end
end
