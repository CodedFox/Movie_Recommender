class RemoveUseridFromMovieRatings < ActiveRecord::Migration
  def change
    remove_column :movie_ratings, :user_id, :integer
  end
end
