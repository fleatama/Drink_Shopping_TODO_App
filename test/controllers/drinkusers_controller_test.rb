require 'test_helper'

class DrinkusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drinkuser = drinkusers(:one)
  end

  test "should get index" do
    get drinkusers_url
    assert_response :success
  end

  test "should get new" do
    get new_drinkuser_url
    assert_response :success
  end

  test "should create drinkuser" do
    assert_difference('Drinkuser.count') do
      post drinkusers_url, params: { drinkuser: {  } }
    end

    assert_redirected_to drinkuser_url(Drinkuser.last)
  end

  test "should show drinkuser" do
    get drinkuser_url(@drinkuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_drinkuser_url(@drinkuser)
    assert_response :success
  end

  test "should update drinkuser" do
    patch drinkuser_url(@drinkuser), params: { drinkuser: {  } }
    assert_redirected_to drinkuser_url(@drinkuser)
  end

  test "should destroy drinkuser" do
    assert_difference('Drinkuser.count', -1) do
      delete drinkuser_url(@drinkuser)
    end

    assert_redirected_to drinkusers_url
  end
end
