require 'test_helper'

class CrownsControllerTest < ActionController::TestCase
  setup do
    @crown = crowns(:one)
    @update = {
      name: 'Linh Crown',
      description: 'Linh Crown is ...'
      price: 97.01
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crowns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crown" do
    assert_difference('Crown.count') do
      post :create, crown: @update
    end

    assert_redirected_to crown_path(assigns(:crown))
  end


  test "should update crown" do
    patch :update, id: @crown, crown: @update
    assert_redirected_to crown_path(assigns(:crown))
  end

end
