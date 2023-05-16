require "test_helper"

class BandSpacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get band_spaces_index_url
    assert_response :success
  end

  test "should get show" do
    get band_spaces_show_url
    assert_response :success
  end

  test "should get create" do
    get band_spaces_create_url
    assert_response :success
  end

  test "should get new" do
    get band_spaces_new_url
    assert_response :success
  end
end
