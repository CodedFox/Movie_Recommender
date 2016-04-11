class AddDobToDirectors < ActiveRecord::Migration
  def change
    add_column :directors, :date_of_birth, :date
  end
end
