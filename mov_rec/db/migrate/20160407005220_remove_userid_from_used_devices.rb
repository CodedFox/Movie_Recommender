class RemoveUseridFromUsedDevices < ActiveRecord::Migration
  def change
    remove_column :used_devices, :user_id, :string
  end
end
