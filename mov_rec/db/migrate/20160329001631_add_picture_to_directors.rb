class AddPictureToDirectors < ActiveRecord::Migration
  def change
    add_column :directors, :picture, :text
  end
end
