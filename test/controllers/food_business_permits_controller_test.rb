require 'test_helper'

class FoodBusinessPermitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_business_permit = food_business_permits(:one)
  end

  test "should get index" do
    get food_business_permits_url
    assert_response :success
  end

  test "should get new" do
    get new_food_business_permit_url
    assert_response :success
  end

  test "should create food_business_permit" do
    assert_difference('FoodBusinessPermit.count') do
      post food_business_permits_url, params: { food_business_permit: { business_type_id: @food_business_permit.business_type_id, office_id: @food_business_permit.office_id, representator_id: @food_business_permit.representator_id } }
    end

    assert_redirected_to food_business_permit_url(FoodBusinessPermit.last)
  end

  test "should show food_business_permit" do
    get food_business_permit_url(@food_business_permit)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_business_permit_url(@food_business_permit)
    assert_response :success
  end

  test "should update food_business_permit" do
    patch food_business_permit_url(@food_business_permit), params: { food_business_permit: { business_type_id: @food_business_permit.business_type_id, office_id: @food_business_permit.office_id, representator_id: @food_business_permit.representator_id } }
    assert_redirected_to food_business_permit_url(@food_business_permit)
  end

  test "should destroy food_business_permit" do
    assert_difference('FoodBusinessPermit.count', -1) do
      delete food_business_permit_url(@food_business_permit)
    end

    assert_redirected_to food_business_permits_url
  end
end
