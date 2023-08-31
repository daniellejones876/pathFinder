require "test_helper"

class PromptsControllerTest < ActionDispatch::IntegrationTest
  test "should get sample" do
    get prompts_sample_url
    assert_response :success
  end
end
