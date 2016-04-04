class RemoveDatereleasedagainFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :date_released, :time
  end
end
