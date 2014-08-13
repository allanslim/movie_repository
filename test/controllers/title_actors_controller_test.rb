require 'test_helper'

class TitleActorsControllerTest < ActionController::TestCase
  setup do
    @title_actor = title_actors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:title_actors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create title_actor" do
    assert_difference('TitleActor.count') do
      post :create, title_actor: { actor_id: @title_actor.actor_id, title_id: @title_actor.title_id }
    end

    assert_redirected_to title_actor_path(assigns(:title_actor))
  end

  test "should show title_actor" do
    get :show, id: @title_actor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @title_actor
    assert_response :success
  end

  test "should update title_actor" do
    patch :update, id: @title_actor, title_actor: { actor_id: @title_actor.actor_id, title_id: @title_actor.title_id }
    assert_redirected_to title_actor_path(assigns(:title_actor))
  end

  test "should destroy title_actor" do
    assert_difference('TitleActor.count', -1) do
      delete :destroy, id: @title_actor
    end

    assert_redirected_to title_actors_path
  end
end
