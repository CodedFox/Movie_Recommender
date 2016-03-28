class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.references :movie, index: true, foreign_key: true
      t.references :studio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
