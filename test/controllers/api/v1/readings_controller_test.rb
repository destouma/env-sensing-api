require 'test_helper'

class Api::V1::ReadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_reading = api_v1_readings(:one)
  end

  test "should get index" do
    get api_v1_sensor_sensor_readings_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_sensor_reading_url
    assert_response :success
  end

  test "should create api_v1_reading" do
    assert_difference('Api::V1::Reading.count') do
      post api_v1_sensor_sensor_readings_url, params: {api_v1_reading: {  } }
    end

    assert_redirected_to api_v1_sensor_reading_url(Api::V1::Reading.last)
  end

  test "should show api_v1_reading" do
    get api_v1_sensor_reading_url(@api_v1_reading)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_sensor_reading_url(@api_v1_reading)
    assert_response :success
  end

  test "should update api_v1_reading" do
    patch api_v1_sensor_reading_url(@api_v1_reading), params: {api_v1_reading: {  } }
    assert_redirected_to api_v1_sensor_reading_url(@api_v1_reading)
  end

  test "should destroy api_v1_reading" do
    assert_difference('Api::V1::Reading.count', -1) do
      delete api_v1_sensor_reading_url(@api_v1_reading)
    end

    assert_redirected_to api_v1_sensor_sensor_readings_url
  end
end
