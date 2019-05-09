require 'test_helper'

class XitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @xity = xities(:one)
  end

  test "should get index" do
    get xities_url
    assert_response :success
  end

  test "should get new" do
    get new_xity_url
    assert_response :success
  end

  test "should create xity" do
    assert_difference('Xity.count') do
      post xities_url, params: { xity: { alamat: @xity.alamat, bphone: @xity.bphone, city_name: @xity.city_name, country_id: @xity.country_id, description: @xity.description, product_name: @xity.product_name, user_id: @xity.user_id } }
    end

    assert_redirected_to xity_url(Xity.last)
  end

  test "should show xity" do
    get xity_url(@xity)
    assert_response :success
  end

  test "should get edit" do
    get edit_xity_url(@xity)
    assert_response :success
  end

  test "should update xity" do
    patch xity_url(@xity), params: { xity: { alamat: @xity.alamat, bphone: @xity.bphone, city_name: @xity.city_name, country_id: @xity.country_id, description: @xity.description, product_name: @xity.product_name, user_id: @xity.user_id } }
    assert_redirected_to xity_url(@xity)
  end

  test "should destroy xity" do
    assert_difference('Xity.count', -1) do
      delete xity_url(@xity)
    end

    assert_redirected_to xities_url
  end
end
