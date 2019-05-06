require 'test_helper'

class RepresentatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @representator = representators(:one)
  end

  test "should get index" do
    get representators_url
    assert_response :success
  end

  test "should get new" do
    get new_representator_url
    assert_response :success
  end

  test "should create representator" do
    assert_difference('Representator.count') do
      post representators_url, params: { representator: { address: @representator.address, name: @representator.name, tel: @representator.tel } }
    end

    assert_redirected_to representator_url(Representator.last)
  end

  test "should show representator" do
    get representator_url(@representator)
    assert_response :success
  end

  test "should get edit" do
    get edit_representator_url(@representator)
    assert_response :success
  end

  test "should update representator" do
    patch representator_url(@representator), params: { representator: { address: @representator.address, name: @representator.name, tel: @representator.tel } }
    assert_redirected_to representator_url(@representator)
  end

  test "should destroy representator" do
    assert_difference('Representator.count', -1) do
      delete representator_url(@representator)
    end

    assert_redirected_to representators_url
  end
end
