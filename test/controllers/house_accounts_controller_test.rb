require 'test_helper'

class HouseAccountsControllerTest < ActionController::TestCase
  setup do
    @house_account = house_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:house_accounts)
  end

  test "should create house_account" do
    assert_difference('HouseAccount.count') do
      post :create, house_account: { accountName: @house_account.accountName, addressLine1: @house_account.addressLine1, addressLine2: @house_account.addressLine2, buildingNumber: @house_account.buildingNumber, country: @house_account.country, county: @house_account.county, houseAccountId: @house_account.houseAccountId, tenantId: @house_account.tenantId }
    end

    assert_response 201
  end

  test "should show house_account" do
    get :show, id: @house_account
    assert_response :success
  end

  test "should update house_account" do
    put :update, id: @house_account, house_account: { accountName: @house_account.accountName, addressLine1: @house_account.addressLine1, addressLine2: @house_account.addressLine2, buildingNumber: @house_account.buildingNumber, country: @house_account.country, county: @house_account.county, houseAccountId: @house_account.houseAccountId, tenantId: @house_account.tenantId }
    assert_response 204
  end

  test "should destroy house_account" do
    assert_difference('HouseAccount.count', -1) do
      delete :destroy, id: @house_account
    end

    assert_response 204
  end
end
