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

require 'test_helper'

class FoodBusinessPermitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
