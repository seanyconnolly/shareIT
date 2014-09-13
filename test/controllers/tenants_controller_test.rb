require 'test_helper'

class TenantsControllerTest < ActionController::TestCase
  setup do
    @tenant = tenants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tenants)
  end

  test "should create tenant" do
    assert_difference('Tenant.count') do
      post :create, tenant: { account_owner: @tenant.account_owner, age: @tenant.age, bill_payer: @tenant.bill_payer, first_name: @tenant.first_name, house_accountId: @tenant.house_accountId, last_name: @tenant.last_name }
    end

    assert_response 201
  end

  test "should show tenant" do
    get :show, id: @tenant
    assert_response :success
  end

  test "should update tenant" do
    put :update, id: @tenant, tenant: { account_owner: @tenant.account_owner, age: @tenant.age, bill_payer: @tenant.bill_payer, first_name: @tenant.first_name, house_accountId: @tenant.house_accountId, last_name: @tenant.last_name }
    assert_response 204
  end

  test "should destroy tenant" do
    assert_difference('Tenant.count', -1) do
      delete :destroy, id: @tenant
    end

    assert_response 204
  end
end
