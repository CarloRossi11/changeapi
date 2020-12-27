require 'test_helper'

class OppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opp = opps(:one)
  end

  test "should get index" do
    get opps_url, as: :json
    assert_response :success
  end

  test "should create opp" do
    assert_difference('Opp.count') do
      post opps_url, params: { opp: { more_info: @opp.more_info, opp_description: @opp.opp_description, opp_type: @opp.opp_type, title: @opp.title } }, as: :json
    end

    assert_response 201
  end

  test "should show opp" do
    get opp_url(@opp), as: :json
    assert_response :success
  end

  test "should update opp" do
    patch opp_url(@opp), params: { opp: { more_info: @opp.more_info, opp_description: @opp.opp_description, opp_type: @opp.opp_type, title: @opp.title } }, as: :json
    assert_response 200
  end

  test "should destroy opp" do
    assert_difference('Opp.count', -1) do
      delete opp_url(@opp), as: :json
    end

    assert_response 204
  end
end
