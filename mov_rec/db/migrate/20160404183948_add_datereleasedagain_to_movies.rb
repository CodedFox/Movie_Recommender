class AddDatereleasedagainToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :date_released, :date
  end
end
