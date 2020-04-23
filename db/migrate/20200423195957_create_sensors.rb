class CreateSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :sensors do |t|
      t.string :uuid
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
