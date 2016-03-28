class CreateMovieTopics < ActiveRecord::Migration
  def change
    create_table :movie_topics do |t|
      t.references :movie, index: true, foreign_key: true
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
