class FoodBusinessPermit < ApplicationRecord
  belongs_to :office
  belongs_to :representator
  belongs_to :business_type
end
