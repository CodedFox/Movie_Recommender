class AddMovienameToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :movie_name, :string
  end
end
