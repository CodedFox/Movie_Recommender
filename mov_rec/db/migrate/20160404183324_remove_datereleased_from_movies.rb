class RemoveDatereleasedFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :date_released, :string
  end
end
