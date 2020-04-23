class CreateSensorTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :sensor_types do |t|
      t.string :name
      t.string :unit
      t.integer :pow10multi
      t.timestamps
    end
  end
end
