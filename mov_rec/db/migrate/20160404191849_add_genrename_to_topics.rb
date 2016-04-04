class AddGenrenameToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :genre_name, :string
  end
end
