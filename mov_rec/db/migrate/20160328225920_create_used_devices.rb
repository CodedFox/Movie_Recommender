class CreateUsedDevices < ActiveRecord::Migration
  def change
    create_table :used_devices do |t|
      t.references :user, index: true, foreign_key: true
      t.references :device, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
