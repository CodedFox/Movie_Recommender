class RemoveGenreFromTopics < ActiveRecord::Migration
  def change
    remove_column :topics, :genre, :string
  end
end
