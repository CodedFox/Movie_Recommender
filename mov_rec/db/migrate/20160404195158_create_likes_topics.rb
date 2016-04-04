class CreateLikesTopics < ActiveRecord::Migration
  def change
    create_table :likes_topics do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
