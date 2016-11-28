class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :skills, :skill, :name
  end
end
