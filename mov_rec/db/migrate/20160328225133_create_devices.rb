class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :device_name

      t.timestamps null: false
    end
  end
end
