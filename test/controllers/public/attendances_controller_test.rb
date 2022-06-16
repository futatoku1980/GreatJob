require "test_helper"

class Public::AttendancesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_attendances_new_url
    assert_response :success
  end

  test "should get index" do
    get public_attendances_index_url
    assert_response :success
  end
end
