class AddPosterandtrailerToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :poster, :text
    add_column :movies, :trailer, :text
  end
end
