# == Schema Information
#
# Table name: candies
#
#  id         :integer          primary key
#  name       :text
#  calories   :integer
#  has_milk   :boolean
#  company_id :integer
#

class Candy < ActiveRecord::Base
    belongs_to :company
    
    def company
end
  
end



