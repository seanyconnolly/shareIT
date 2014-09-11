require 'test_helper'

class SuperusersControllerTest < ActionController::TestCase
  setup do
    @superuser = superusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:superusers)
  end

  test "should create superuser" do
    assert_difference('Superuser.count') do
      post :create, superuser: { password: @superuser.password, username_s: @superuser.username_s }
    end

    assert_response 201
  end

  test "should show superuser" do
    get :show, id: @superuser
    assert_response :success
  end

  test "should update superuser" do
    put :update, id: @superuser, superuser: { password: @superuser.password, username_s: @superuser.username_s }
    assert_response 204
  end

  test "should destroy superuser" do
    assert_difference('Superuser.count', -1) do
      delete :destroy, id: @superuser
    end

    assert_response 204
  end
end
