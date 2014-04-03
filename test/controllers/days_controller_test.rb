require 'test_helper'

class DaysControllerTest < ActionController::TestCase
  setup do
    @day = days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create day" do
    assert_difference('Day.count') do
      post :create, day: { child_id: @day.child_id, friday: @day.friday, monday: @day.monday, saturday: @day.saturday, sunday: @day.sunday, thursday: @day.thursday, tuesday: @day.tuesday, wednesday: @day.wednesday }
    end

    assert_redirected_to day_path(assigns(:day))
  end

  test "should show day" do
    get :show, id: @day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @day
    assert_response :success
  end

  test "should update day" do
    patch :update, id: @day, day: { child_id: @day.child_id, friday: @day.friday, monday: @day.monday, saturday: @day.saturday, sunday: @day.sunday, thursday: @day.thursday, tuesday: @day.tuesday, wednesday: @day.wednesday }
    assert_redirected_to day_path(assigns(:day))
  end

  test "should destroy day" do
    assert_difference('Day.count', -1) do
      delete :destroy, id: @day
    end

    assert_redirected_to days_path
  end
end
