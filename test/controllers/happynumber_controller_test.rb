require 'test_helper'

class HappynumberControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get input" do
    get happynumber_input_url
    assert_response 302 
  end

  test "should get output" do
    get happynumber_find_happy_url
    assert_response 302 
  end

  test 'should get res' do
    get happynumber_find_happy_url, params: { value: 12345 }
  end
end
