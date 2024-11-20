require "test_helper"

class ExperemenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expereman = experemen(:one)
  end

  test "should get index" do
    get experemen_url, as: :json
    assert_response :success
  end

  test "should create expereman" do
    assert_difference("Expereman.count") do
      post experemen_url, params: { expereman: { name: @expereman.name } }, as: :json
    end

    assert_response :created
  end

  test "should show expereman" do
    get expereman_url(@expereman), as: :json
    assert_response :success
  end

  test "should update expereman" do
    patch expereman_url(@expereman), params: { expereman: { name: @expereman.name } }, as: :json
    assert_response :success
  end

  test "should destroy expereman" do
    assert_difference("Expereman.count", -1) do
      delete expereman_url(@expereman), as: :json
    end

    assert_response :no_content
  end
end
