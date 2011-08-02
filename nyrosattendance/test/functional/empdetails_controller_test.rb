require 'test_helper'

class EmpdetailsControllerTest < ActionController::TestCase
  setup do
    @empdetail = empdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empdetail" do
    assert_difference('Empdetail.count') do
      post :create, :empdetail => @empdetail.attributes
    end

    assert_redirected_to empdetail_path(assigns(:empdetail))
  end

  test "should show empdetail" do
    get :show, :id => @empdetail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @empdetail.to_param
    assert_response :success
  end

  test "should update empdetail" do
    put :update, :id => @empdetail.to_param, :empdetail => @empdetail.attributes
    assert_redirected_to empdetail_path(assigns(:empdetail))
  end

  test "should destroy empdetail" do
    assert_difference('Empdetail.count', -1) do
      delete :destroy, :id => @empdetail.to_param
    end

    assert_redirected_to empdetails_path
  end
end
