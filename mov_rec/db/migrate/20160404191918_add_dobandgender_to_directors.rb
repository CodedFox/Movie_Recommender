class AddDobandgenderToDirectors < ActiveRecord::Migration
  def change
  	add_column :directors, :date_of_birth, :string
  	add_column :directors, :gender, :string, :limit =>1
  end
end
