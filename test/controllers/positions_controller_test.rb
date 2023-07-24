require "test_helper"

class PositionsControllerTest < ActionDispatch::IntegrationTest

  include Devise::Test::IntegrationHelpers
  setup do
    @position = positions(:one)
  end

  test "should get index" do
    get positions_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_position_url
    assert_response :success
  end

  test "should create position" do
    sign_in users(:one)
    assert_difference("Position.count") do
      post positions_url, params: { position: { description: @position.description, requirements: @position.requirements, responsibilities: @position.responsibilities, salary: @position.salary, title: @position.title } }
    end

    assert_redirected_to position_url(Position.last)
  end

  test "should show position" do
    sign_in users(:one)
    get position_url(@position)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_position_url(@position)
    assert_response :success
  end

  test "should update position" do
    sign_in users(:one)
    patch position_url(@position), params: { position: { description: @position.description, requirements: @position.requirements, responsibilities: @position.responsibilities, salary: @position.salary, title: @position.title } }
    assert_redirected_to position_url(@position)
  end

  test "should destroy position" do
    sign_in users(:one)
    assert_difference("Position.count", -1) do
      delete position_url(@position)
    end

    assert_redirected_to positions_url
  end
end
