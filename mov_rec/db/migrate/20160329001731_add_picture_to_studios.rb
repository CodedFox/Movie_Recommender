class AddPictureToStudios < ActiveRecord::Migration
  def change
    add_column :studios, :picture, :text
  end
end
