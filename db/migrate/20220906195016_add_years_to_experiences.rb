class AddYearsToExperiences < ActiveRecord::Migration[7.0]
  def change
    remove_column :experiences, :start_date, :date
    remove_column :experiences, :end_date, :date
    add_column :experiences, :years, :decimal
  end
end
