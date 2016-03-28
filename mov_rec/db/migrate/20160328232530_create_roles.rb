class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :character_name

      t.timestamps null: false
    end
  end
end
