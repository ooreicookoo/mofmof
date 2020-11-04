require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "creating a Propertie" do
    visit properties_url
    click_on "New Propertie"

    fill_in "Address", with: @property.address
    fill_in "Age", with: @property.age
    fill_in "Name", with: @property.name
    fill_in "Remark", with: @property.remark
    fill_in "Rent", with: @property.rent
    click_on "Create Propertie"

    assert_text "Propertie was successfully created"
    click_on "Back"
  end

  test "updating a Propertie" do
    visit properties_url
    click_on "Edit", match: :first

    fill_in "Address", with: @property.address
    fill_in "Age", with: @property.age
    fill_in "Name", with: @property.name
    fill_in "Remark", with: @property.remark
    fill_in "Rent", with: @property.rent
    click_on "Update Propertie"

    assert_text "Propertie was successfully updated"
    click_on "Back"
  end

  test "destroying a Propertie" do
    visit properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Propertie was successfully destroyed"
  end
end
