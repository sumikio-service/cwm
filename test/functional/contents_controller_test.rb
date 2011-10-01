require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get marketing-branding" do
    get :marketing-branding
    assert_response :success
  end

  test "should get complete-brand-experience" do
    get :complete-brand-experience
    assert_response :success
  end

  test "should get media-production" do
    get :media-production
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get clients" do
    get :clients
    assert_response :success
  end

  test "should get inspiration" do
    get :inspiration
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
