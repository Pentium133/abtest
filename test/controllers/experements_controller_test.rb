require "test_helper"

class ExperementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experement = experements(:one)
  end

  test "should get index" do
    get experements_url, as: :json
    assert_response :success
  end

  test "should create experement" do
    assert_difference("Experement.count") do
      post experements_url, params: { experement: { name: @experement.name } }, as: :json
    end

    assert_response :created
  end

  test "should show experement" do
    get experement_url(@experement), as: :json
    assert_response :success
  end

  test "should update experement" do
    patch experement_url(@experement), params: { experement: { name: @experement.name } }, as: :json
    assert_response :success
  end

  test "should destroy experement" do
    assert_difference("Experement.count", -1) do
      delete experement_url(@experement), as: :json
    end

    assert_response :no_content
  end
end
