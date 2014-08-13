require 'test_helper'

class TitleAssetsControllerTest < ActionController::TestCase
  setup do
    @title_asset = title_assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:title_assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create title_asset" do
    assert_difference('TitleAsset.count') do
      post :create, title_asset: { asset_id: @title_asset.asset_id, title_id: @title_asset.title_id }
    end

    assert_redirected_to title_asset_path(assigns(:title_asset))
  end

  test "should show title_asset" do
    get :show, id: @title_asset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @title_asset
    assert_response :success
  end

  test "should update title_asset" do
    patch :update, id: @title_asset, title_asset: { asset_id: @title_asset.asset_id, title_id: @title_asset.title_id }
    assert_redirected_to title_asset_path(assigns(:title_asset))
  end

  test "should destroy title_asset" do
    assert_difference('TitleAsset.count', -1) do
      delete :destroy, id: @title_asset
    end

    assert_redirected_to title_assets_path
  end
end
