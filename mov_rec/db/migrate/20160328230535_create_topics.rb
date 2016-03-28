class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :genre

      t.timestamps null: false
    end
  end
end
