class RemoveAgerangeFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :age_range, :integer
  end
end
