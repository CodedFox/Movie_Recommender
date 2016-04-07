class AddProfileidToMovieRatings < ActiveRecord::Migration
  def change
    add_reference :movie_ratings, :profile, index: true, foreign_key: true
  end
end
