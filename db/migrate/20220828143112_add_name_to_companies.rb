class AddNameToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :name, :string
    add_column :companies, :sector, :string
    add_column :companies, :city, :string
  end
end
