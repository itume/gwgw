# == Schema Information
#
# Table name: food_business_permits
#
#  id               :bigint           not null, primary key
#  office_id        :bigint
#  representator_id :bigint
#  business_type_id :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class FoodBusinessPermit < ApplicationRecord
  require 'csv'
  belongs_to :office
  belongs_to :representator
  belongs_to :business_type
end
