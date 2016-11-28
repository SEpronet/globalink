class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :name
      t.string :location
      t.date :enroll
      t.date :grad
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
