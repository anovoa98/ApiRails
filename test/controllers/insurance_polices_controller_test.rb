require 'test_helper'

class InsurancePolicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insurance_police = insurance_polices(:one)
  end

  test "should get index" do
    get insurance_polices_url, as: :json
    assert_response :success
  end

  test "should create insurance_police" do
    assert_difference('InsurancePolice.count') do
      post insurance_polices_url, params: { insurance_police: { basic: @insurance_police.basic, premium: @insurance_police.premium, standard: @insurance_police.standard } }, as: :json
    end

    assert_response 201
  end

  test "should show insurance_police" do
    get insurance_police_url(@insurance_police), as: :json
    assert_response :success
  end

  test "should update insurance_police" do
    patch insurance_police_url(@insurance_police), params: { insurance_police: { basic: @insurance_police.basic, premium: @insurance_police.premium, standard: @insurance_police.standard } }, as: :json
    assert_response 200
  end

  test "should destroy insurance_police" do
    assert_difference('InsurancePolice.count', -1) do
      delete insurance_police_url(@insurance_police), as: :json
    end

    assert_response 204
  end
end
