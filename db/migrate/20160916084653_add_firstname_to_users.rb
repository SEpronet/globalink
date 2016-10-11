class AddFirstnameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :title, :string
    add_column :users, :education, :string
    
  end
end
