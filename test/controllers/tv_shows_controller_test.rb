require 'test_helper'

class TvShowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tv_shows_index_url
    assert_response :success
  end

  test "should get set_favourite" do
    get tv_shows_set_favourite_url
    assert_response :success
  end

end
