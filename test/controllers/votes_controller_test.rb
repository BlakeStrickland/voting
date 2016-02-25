require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  test "should get create" do
    get :create, voter_id: votes(:one).voter_id, candidate_id: votes(:one).candidate_id
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
