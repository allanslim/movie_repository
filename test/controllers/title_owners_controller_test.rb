require 'test_helper'

class TitleOwnersControllerTest < ActionController::TestCase
  setup do
    @title_owner = title_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:title_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create title_owner" do
    assert_difference('TitleOwner.count') do
      post :create, title_owner: { studio_id: @title_owner.studio_id, title_id: @title_owner.title_id }
    end

    assert_redirected_to title_owner_path(assigns(:title_owner))
  end

  test "should show title_owner" do
    get :show, id: @title_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @title_owner
    assert_response :success
  end

  test "should update title_owner" do
    patch :update, id: @title_owner, title_owner: { studio_id: @title_owner.studio_id, title_id: @title_owner.title_id }
    assert_redirected_to title_owner_path(assigns(:title_owner))
  end

  test "should destroy title_owner" do
    assert_difference('TitleOwner.count', -1) do
      delete :destroy, id: @title_owner
    end

    assert_redirected_to title_owners_path
  end
end
