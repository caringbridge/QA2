require 'minitest/autorun'
require_relative '../signup_page'
require_relative '../site_variables'
require_relative '../user_home_page'
require 'watir-webdriver'

class SignupTestMinitest < MiniTest::Unit::TestCase
  def setup
    puts "In setup"
    @browser = Watir::Browser.new :chrome
    @site_URL = 'http://'+SiteVariables.v5env+'.caringbridge.org'
  end

  def teardown
    @browser.close
  end

  def test_signup
    signup_page = SignupPage.new(@browser, @site_URL)

    signup_page.visit
    time_in_secs_now = Time.now.to_i.to_s
    user_email_base = 'fsmith' + time_in_secs_now
    user_email = user_email_base + "@mailinator.com"
    user_home_page = signup_page.signup "Fred", "Smith", user_email, "123456", false, true

    # verify user is signed in
    assert user_home_page.expected_div?
    assert_equal "Fred's Home", user_home_page.expected_element.text
    assert (user_home_page.expected_element.text.include? "Fred")
  end
end