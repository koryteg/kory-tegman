require 'test_helper'

class TalentsControllerTest < ActionController::TestCase
  setup do
    @talent = talents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create talent" do
    assert_difference('Talent.count') do
      post :create, talent: @talent.attributes
    end

    assert_redirected_to talent_path(assigns(:talent))
  end

  test "should show talent" do
    get :show, id: @talent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @talent
    assert_response :success
  end

  test "should update talent" do
    put :update, id: @talent, talent: @talent.attributes
    assert_redirected_to talent_path(assigns(:talent))
  end

  test "should destroy talent" do
    assert_difference('Talent.count', -1) do
      delete :destroy, id: @talent
    end

    assert_redirected_to talents_path
  end
end
