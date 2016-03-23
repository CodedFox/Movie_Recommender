class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :age_range
      t.string :gender, limit:1 
      t.string :occupation
      t.references :user, index: true, foreign_key: true, on_delete: :cascade

      t.timestamps null: false
    end
  end
end
