class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :level
      t.string :sector
      t.text :description
      t.string :education_requirement
      t.string :experience_requirement
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
