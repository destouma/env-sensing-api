class CreateSensorReadings < ActiveRecord::Migration[5.1]
  def change
    create_table :sensor_readings do |t|
      t.integer :sensorvalue
      t.timestamps
    end
  end
end
