class AddDatereleasedToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :date_released, :time
  end
end
