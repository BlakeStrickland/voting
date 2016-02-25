require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: candidates(:one)
    assert_response :success
  end

  test "should get create" do
    get :create, name: candidates(:one).name,hometown: candidates(:one).hometown,district: candidates(:one).district,party: candidates(:one).party
    assert_response :success
  end

end
