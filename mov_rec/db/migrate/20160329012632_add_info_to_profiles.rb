class AddInfoToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :first_name, :string
    add_column :profiles, :last_name, :string
    add_column :profiles, :city, :string
    add_column :profiles, :province, :string
    add_column :profiles, :country, :string
  end
end
