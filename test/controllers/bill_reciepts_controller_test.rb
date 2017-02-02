require 'test_helper'

class BillRecieptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill_reciept = bill_reciepts(:one)
  end

  test "should get index" do
    get bill_reciepts_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_reciept_url
    assert_response :success
  end

  test "should create bill_reciept" do
    assert_difference('BillReciept.count') do
      post bill_reciepts_url, params: { bill_reciept: { Title: @bill_reciept.Title, amount: @bill_reciept.amount, description: @bill_reciept.description } }
    end

    assert_redirected_to bill_reciept_url(BillReciept.last)
  end

  test "should show bill_reciept" do
    get bill_reciept_url(@bill_reciept)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_reciept_url(@bill_reciept)
    assert_response :success
  end

  test "should update bill_reciept" do
    patch bill_reciept_url(@bill_reciept), params: { bill_reciept: { Title: @bill_reciept.Title, amount: @bill_reciept.amount, description: @bill_reciept.description } }
    assert_redirected_to bill_reciept_url(@bill_reciept)
  end

  test "should destroy bill_reciept" do
    assert_difference('BillReciept.count', -1) do
      delete bill_reciept_url(@bill_reciept)
    end

    assert_redirected_to bill_reciepts_url
  end
end
