class CreateMovieRatings < ActiveRecord::Migration
  def change
    create_table :movie_ratings do |t|
      t.date :date_watched
      t.integer :user_rating
      t.text :review
      t.references :user, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
