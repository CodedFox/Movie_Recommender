class RemoveInfoFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :city, :string
    remove_column :users, :province, :string
    remove_column :users, :country, :string
  end
end
