require "application_system_test_case"

class FoodBusinessPermitsTest < ApplicationSystemTestCase
  setup do
    @food_business_permit = food_business_permits(:one)
  end

  test "visiting the index" do
    visit food_business_permits_url
    assert_selector "h1", text: "Food Business Permits"
  end

  test "creating a Food business permit" do
    visit food_business_permits_url
    click_on "New Food Business Permit"

    fill_in "Business type", with: @food_business_permit.business_type_id
    fill_in "Office", with: @food_business_permit.office_id
    fill_in "Representator", with: @food_business_permit.representator_id
    click_on "Create Food business permit"

    assert_text "Food business permit was successfully created"
    click_on "Back"
  end

  test "updating a Food business permit" do
    visit food_business_permits_url
    click_on "Edit", match: :first

    fill_in "Business type", with: @food_business_permit.business_type_id
    fill_in "Office", with: @food_business_permit.office_id
    fill_in "Representator", with: @food_business_permit.representator_id
    click_on "Update Food business permit"

    assert_text "Food business permit was successfully updated"
    click_on "Back"
  end

  test "destroying a Food business permit" do
    visit food_business_permits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Food business permit was successfully destroyed"
  end
end
