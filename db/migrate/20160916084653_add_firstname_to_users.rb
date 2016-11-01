class AddFirstnameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
<<<<<<< HEAD
    add_column :users, :title, :string
    add_column :users, :education, :string
=======
>>>>>>> origin/Jordan_Dev
    
  end
end
