require 'test_helper'

class LineagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lineages_index_url
    assert_response :success
  end

end
