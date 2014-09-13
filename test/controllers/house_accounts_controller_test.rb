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
      post :create, house_account: { address_line1: @house_account.address_line1, address_line2: @house_account.address_line2, building_number: @house_account.building_number, country: @house_account.country, county: @house_account.county, name: @house_account.name, tenant_Id: @house_account.tenant_Id }
    end

    assert_response 201
  end

  test "should show house_account" do
    get :show, id: @house_account
    assert_response :success
  end

  test "should update house_account" do
    put :update, id: @house_account, house_account: { address_line1: @house_account.address_line1, address_line2: @house_account.address_line2, building_number: @house_account.building_number, country: @house_account.country, county: @house_account.county, name: @house_account.name, tenant_Id: @house_account.tenant_Id }
    assert_response 204
  end

  test "should destroy house_account" do
    assert_difference('HouseAccount.count', -1) do
      delete :destroy, id: @house_account
    end

    assert_response 204
  end
end
