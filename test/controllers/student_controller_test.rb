require 'test_helper'

class StudentControllerTest < ActionDispatch::IntegrationTest
  test "should get attend_school" do
    get student_attend_school_url
    assert_response :success
  end

  test "should get drop_school" do
    get student_drop_school_url
    assert_response :success
  end

end
