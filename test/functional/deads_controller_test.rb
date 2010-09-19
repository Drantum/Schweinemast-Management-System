require 'test_helper'

class DeadsControllerTest < ActionController::TestCase
  setup do
    @dead = deads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dead" do
    assert_difference('Dead.count') do
      post :create, :dead => @dead.attributes
    end

    assert_redirected_to dead_path(assigns(:dead))
  end

  test "should show dead" do
    get :show, :id => @dead.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dead.to_param
    assert_response :success
  end

  test "should update dead" do
    put :update, :id => @dead.to_param, :dead => @dead.attributes
    assert_redirected_to dead_path(assigns(:dead))
  end

  test "should destroy dead" do
    assert_difference('Dead.count', -1) do
      delete :destroy, :id => @dead.to_param
    end

    assert_redirected_to deads_path
  end
end
