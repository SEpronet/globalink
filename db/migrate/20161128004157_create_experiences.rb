class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.string :title
      t.string :location
      t.date :from
      t.date :to
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
