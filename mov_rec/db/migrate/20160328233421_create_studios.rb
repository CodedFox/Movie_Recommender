class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.string :studio_name
      t.string :country

      t.timestamps null: false
    end
  end
end
