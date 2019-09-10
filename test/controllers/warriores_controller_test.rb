require 'test_helper'

class WarrioresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warrior = warriores(:one)
  end

  test "should get index" do
    get warriores_url
    assert_response :success
  end

  test "should get new" do
    get new_warriore_url
    assert_response :success
  end

  test "should create warrior" do
    assert_difference('Warrior.count') do
      post warriores_url, params: { warrior: {  } }
    end

    assert_redirected_to warriore_url(Warrior.last)
  end

  test "should show warrior" do
    get warriore_url(@warrior)
    assert_response :success
  end

  test "should get edit" do
    get edit_warriore_url(@warrior)
    assert_response :success
  end

  test "should update warrior" do
    patch warriore_url(@warrior), params: { warrior: {  } }
    assert_redirected_to warriore_url(@warrior)
  end

  test "should destroy warrior" do
    assert_difference('Warrior.count', -1) do
      delete warriore_url(@warrior)
    end

    assert_redirected_to warriores_url
  end
end
