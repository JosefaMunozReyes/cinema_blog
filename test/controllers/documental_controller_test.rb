require "test_helper"

class DocumentalControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get documental_new_url
    assert_response :success
  end

  test "should get index" do
    get documental_index_url
    assert_response :success
  end
end
