require 'test_helper'

class StudiosTitlesControllerTest < ActionController::TestCase
  setup do
    @studios_title = studios_titles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studios_titles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studios_title" do
    assert_difference('StudiosTitle.count') do
      post :create, studios_title: { studio_id: @studios_title.studio_id, title_id: @studios_title.title_id }
    end

    assert_redirected_to studios_title_path(assigns(:studios_title))
  end

  test "should show studios_title" do
    get :show, id: @studios_title
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studios_title
    assert_response :success
  end

  test "should update studios_title" do
    patch :update, id: @studios_title, studios_title: { studio_id: @studios_title.studio_id, title_id: @studios_title.title_id }
    assert_redirected_to studios_title_path(assigns(:studios_title))
  end

  test "should destroy studios_title" do
    assert_difference('StudiosTitle.count', -1) do
      delete :destroy, id: @studios_title
    end

    assert_redirected_to studios_titles_path
  end
end
