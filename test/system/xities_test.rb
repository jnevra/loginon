require "application_system_test_case"

class XitiesTest < ApplicationSystemTestCase
  setup do
    @xity = xities(:one)
  end

  test "visiting the index" do
    visit xities_url
    assert_selector "h1", text: "Xities"
  end

  test "creating a Xity" do
    visit xities_url
    click_on "New Xity"

    fill_in "Alamat", with: @xity.alamat
    fill_in "Bphone", with: @xity.bphone
    fill_in "City name", with: @xity.city_name
    fill_in "Country", with: @xity.country_id
    fill_in "Description", with: @xity.description
    fill_in "Product name", with: @xity.product_name
    fill_in "User", with: @xity.user_id
    click_on "Create Xity"

    assert_text "Xity was successfully created"
    click_on "Back"
  end

  test "updating a Xity" do
    visit xities_url
    click_on "Edit", match: :first

    fill_in "Alamat", with: @xity.alamat
    fill_in "Bphone", with: @xity.bphone
    fill_in "City name", with: @xity.city_name
    fill_in "Country", with: @xity.country_id
    fill_in "Description", with: @xity.description
    fill_in "Product name", with: @xity.product_name
    fill_in "User", with: @xity.user_id
    click_on "Update Xity"

    assert_text "Xity was successfully updated"
    click_on "Back"
  end

  test "destroying a Xity" do
    visit xities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Xity was successfully destroyed"
  end
end
