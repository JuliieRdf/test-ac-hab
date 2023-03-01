require "test_helper"

class HabitantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habitant = habitants(:one)
  end

  test "should get index" do
    get habitants_url
    assert_response :success
  end

  test "should get new" do
    get new_habitant_url
    assert_response :success
  end

  test "should create habitant" do
    assert_difference("Habitant.count") do
      post habitants_url, params: { habitant: { birthday: @habitant.birthday, name: @habitant.name, personality: @habitant.personality, photo: @habitant.photo, type: @habitant.type } }
    end

    assert_redirected_to habitant_url(Habitant.last)
  end

  test "should show habitant" do
    get habitant_url(@habitant)
    assert_response :success
  end

  test "should get edit" do
    get edit_habitant_url(@habitant)
    assert_response :success
  end

  test "should update habitant" do
    patch habitant_url(@habitant), params: { habitant: { birthday: @habitant.birthday, name: @habitant.name, personality: @habitant.personality, photo: @habitant.photo, type: @habitant.type } }
    assert_redirected_to habitant_url(@habitant)
  end

  test "should destroy habitant" do
    assert_difference("Habitant.count", -1) do
      delete habitant_url(@habitant)
    end

    assert_redirected_to habitants_url
  end
end
