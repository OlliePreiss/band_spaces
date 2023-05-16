require "test_helper"

class BandspacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bandspaces_index_url
    assert_response :success
  end

  test "should get show" do
    get bandspaces_show_url
    assert_response :success
  end

  test "should get create" do
    get bandspaces_create_url
    assert_response :success
  end

  test "should get new" do
    get bandspaces_new_url
    assert_response :success
  end
end
