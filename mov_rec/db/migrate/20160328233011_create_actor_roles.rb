class CreateActorRoles < ActiveRecord::Migration
  def change
    create_table :actor_roles do |t|
      t.references :actor, index: true, foreign_key: true
      t.references :role, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
