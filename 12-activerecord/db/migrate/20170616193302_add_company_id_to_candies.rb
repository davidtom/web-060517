class AddCompanyIdToCandies < ActiveRecord::Migration[5.1]
  def change
    add_column :candies, :company_id, :integer
  end
end
