require 'test_helper'

class PinBilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pin_bil = pin_bils(:one)
  end

  test "should get index" do
    get pin_bils_url
    assert_response :success
  end

  test "should get new" do
    get new_pin_bil_url
    assert_response :success
  end

  test "should create pin_bil" do
    assert_difference('PinBil.count') do
      post pin_bils_url, params: { pin_bil: { Date_of_payment: @pin_bil.Date_of_payment, Description: @pin_bil.Description, Title: @pin_bil.Title, amount: @pin_bil.amount } }
    end

    assert_redirected_to pin_bil_url(PinBil.last)
  end

  test "should show pin_bil" do
    get pin_bil_url(@pin_bil)
    assert_response :success
  end

  test "should get edit" do
    get edit_pin_bil_url(@pin_bil)
    assert_response :success
  end

  test "should update pin_bil" do
    patch pin_bil_url(@pin_bil), params: { pin_bil: { Date_of_payment: @pin_bil.Date_of_payment, Description: @pin_bil.Description, Title: @pin_bil.Title, amount: @pin_bil.amount } }
    assert_redirected_to pin_bil_url(@pin_bil)
  end

  test "should destroy pin_bil" do
    assert_difference('PinBil.count', -1) do
      delete pin_bil_url(@pin_bil)
    end

    assert_redirected_to pin_bils_url
  end
end
