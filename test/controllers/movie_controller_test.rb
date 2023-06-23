require "test_helper"

class MovieControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get movie_new_url
    assert_response :success
  end

  test "should get index" do
    get movie_index_url
    assert_response :success
  end
end
