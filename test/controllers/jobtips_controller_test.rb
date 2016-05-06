require 'test_helper'

class JobtipsControllerTest < ActionController::TestCase
  setup do
    @jobtip = jobtips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobtips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobtip" do
    assert_difference('Jobtip.count') do
      post :create, jobtip: { description: @jobtip.description, image: @jobtip.image, title: @jobtip.title }
    end

    assert_redirected_to jobtip_path(assigns(:jobtip))
  end

  test "should show jobtip" do
    get :show, id: @jobtip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobtip
    assert_response :success
  end

  test "should update jobtip" do
    patch :update, id: @jobtip, jobtip: { description: @jobtip.description, image: @jobtip.image, title: @jobtip.title }
    assert_redirected_to jobtip_path(assigns(:jobtip))
  end

  test "should destroy jobtip" do
    assert_difference('Jobtip.count', -1) do
      delete :destroy, id: @jobtip
    end

    assert_redirected_to jobtips_path
  end
end
