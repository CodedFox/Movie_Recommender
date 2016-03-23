class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :password
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :email
      t.string :city
      t.string :province
      t.string :country

      t.timestamps null: false
    end
  end
end
