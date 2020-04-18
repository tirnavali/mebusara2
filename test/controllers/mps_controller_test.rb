require 'test_helper'

class MpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mp = mps(:one)
  end

  test "should get index" do
    get mps_url
    assert_response :success
  end

  test "should get new" do
    get new_mp_url
    assert_response :success
  end

  test "should create mp" do
    assert_difference('Mp.count') do
      post mps_url, params: { mp: { birthdate: @mp.birthdate, deaddate: @mp.deaddate, detail: @mp.detail, gender: @mp.gender, name: @mp.name, name2: @mp.name2, surname: @mp.surname } }
    end

    assert_redirected_to mp_url(Mp.last)
  end

  test "should show mp" do
    get mp_url(@mp)
    assert_response :success
  end

  test "should get edit" do
    get edit_mp_url(@mp)
    assert_response :success
  end

  test "should update mp" do
    patch mp_url(@mp), params: { mp: { birthdate: @mp.birthdate, deaddate: @mp.deaddate, detail: @mp.detail, gender: @mp.gender, name: @mp.name, name2: @mp.name2, surname: @mp.surname } }
    assert_redirected_to mp_url(@mp)
  end

  test "should destroy mp" do
    assert_difference('Mp.count', -1) do
      delete mp_url(@mp)
    end

    assert_redirected_to mps_url
  end
end
