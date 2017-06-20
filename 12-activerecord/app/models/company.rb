# == Schema Information
#
# Table name: companies
#
#  id           :integer          not null, primary key
#  name         :string
#  year_founded :integer
#

class Company < ActiveRecord::Base
    has_many :candies
    
    def candies
        ActiveRecord::Base.connection.execute("select * from candies where company_id = ?", self.id)
    end
end
