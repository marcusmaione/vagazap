class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :level
      t.string :school
      t.string :field
      t.string :complete
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
