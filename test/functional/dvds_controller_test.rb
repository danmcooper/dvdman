require 'test_helper'

class DvdsControllerTest < ActionController::TestCase
  setup do
    @dvd = dvds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dvds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dvd" do
    assert_difference('Dvd.count') do
      post :create, dvd: { asin: @dvd.asin, name: @dvd.name, release_date: @dvd.release_date, summary: @dvd.summary }
    end

    assert_redirected_to dvd_path(assigns(:dvd))
  end

  test "should show dvd" do
    get :show, id: @dvd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dvd
    assert_response :success
  end

  test "should update dvd" do
    put :update, id: @dvd, dvd: { asin: @dvd.asin, name: @dvd.name, release_date: @dvd.release_date, summary: @dvd.summary }
    assert_redirected_to dvd_path(assigns(:dvd))
  end

  test "should destroy dvd" do
    assert_difference('Dvd.count', -1) do
      delete :destroy, id: @dvd
    end

    assert_redirected_to dvds_path
  end
end
