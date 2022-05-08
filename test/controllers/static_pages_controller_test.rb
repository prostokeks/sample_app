require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @ololo = "Ruby on Rails Tutorial Sample App"
  end

  test "should get root" do
    get 
    assert_response :success
    assert_select "title", "Home | #{@ololo}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@ololo}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@ololo}"
  end

  test "should get about" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@ololo}"
  end
end
