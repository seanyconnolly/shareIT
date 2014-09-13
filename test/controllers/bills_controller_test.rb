require 'test_helper'

class BillsControllerTest < ActionController::TestCase
  setup do
    @bill = bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bills)
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post :create, bill: { account_number: @bill.account_number, frequency: @bill.frequency, house_account_id: @bill.house_account_id, name: @bill.name }
    end

    assert_response 201
  end

  test "should show bill" do
    get :show, id: @bill
    assert_response :success
  end

  test "should update bill" do
    put :update, id: @bill, bill: { account_number: @bill.account_number, frequency: @bill.frequency, house_account_id: @bill.house_account_id, name: @bill.name }
    assert_response 204
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete :destroy, id: @bill
    end

    assert_response 204
  end
end
