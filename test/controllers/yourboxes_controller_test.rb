require 'test_helper'

class YourboxesControllerTest < ActionController::TestCase
  setup do
    @yourbox = yourboxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yourboxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yourbox" do
    assert_difference('Yourbox.count') do
      post :create, yourbox: { description: @yourbox.description }
    end

    assert_redirected_to yourbox_path(assigns(:yourbox))
  end

  test "should show yourbox" do
    get :show, id: @yourbox
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yourbox
    assert_response :success
  end

  test "should update yourbox" do
    patch :update, id: @yourbox, yourbox: { description: @yourbox.description }
    assert_redirected_to yourbox_path(assigns(:yourbox))
  end

  test "should destroy yourbox" do
    assert_difference('Yourbox.count', -1) do
      delete :destroy, id: @yourbox
    end

    assert_redirected_to yourboxes_path
  end
end
