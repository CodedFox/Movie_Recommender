class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :date_released
      t.time :duration
      t.string :language
      t.string :subtitles
      t.string :dubbed
      t.string :country
      t.string :age_rating

      t.timestamps null: false
    end
  end
end
