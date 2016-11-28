class AddOngoingToEducations < ActiveRecord::Migration[5.0]
  def change
    add_column :educations, :ongoing, :boolean
  end
end
