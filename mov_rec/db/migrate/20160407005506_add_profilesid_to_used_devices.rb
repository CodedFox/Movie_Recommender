class AddProfilesidToUsedDevices < ActiveRecord::Migration
  def change
    add_reference :used_devices, :profile, index: true, foreign_key: true
  end
end
