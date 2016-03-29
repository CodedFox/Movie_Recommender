class AddPictureToActors < ActiveRecord::Migration
  def change
    add_column :actors, :picture, :text
  end
end
