require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get create" do
    get :create, name: voters(:one).name,party: voters(:one).party
    assert_response :success
  end

  test "should get show" do
    get :show, id: voters(:one)
    assert_response :success
  end

  test "should get fail to update without token" do
    v = Voter.create!(name: "Mason", party: "AllTheTime")
    patch :update, id: v.id, name: "The Dude"
    v.reload
    assert_equal "Mason", v.name
  end

  test "should get update with token" do
    v = Voter.create!(name: "Mason", party: "AllTheTime")
    patch :update, id: v.id, name: "The Dude", token: v.token
    v.reload
    assert_equal "Mason", v.name
  end

  test "should get update only certian fields" do
    v = Voter.create!(name: "Mason", party: "AllTheTime")
    patch :update, id: v.id, name: "The Dude", token: v.token
    v.reload
    assert_equal "AllTheTime", v.party
  end

end
