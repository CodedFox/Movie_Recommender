class RemoveDobFromDirectors < ActiveRecord::Migration
  def change
    remove_column :directors, :date_of_birth, :string
  end
end
