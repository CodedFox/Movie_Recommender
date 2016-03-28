class CreateCastingTypes < ActiveRecord::Migration
  def change
    create_table :casting_types do |t|
      t.string :cast_type

      t.timestamps null: false
    end
  end
end
