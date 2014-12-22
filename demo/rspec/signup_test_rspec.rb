require_relative '../signup_page'
require_relative '../site_variables'
require 'watir-webdriver'

# To install:
# > sudo gem install rspec
# To run, from rspec directory:
# > rspec signup_test_rspec.rb

describe "Signup Test" do

  before(:all) do
    @browser = Watir::Browser.new :chrome
    @site_URL = 'http://'+SiteVariables.v5env+'.caringbridge.org'
  end

  after(:all) do
    @browser.close
  end

  it "Can signup" do
    @signup_page = SignupPage.new(@browser, @site_URL)
    @signup_page.visit

    time_in_secs_now = Time.now.to_i.to_s
    user_email_base = 'fsmith' + time_in_secs_now
    user_email = user_email_base + "@mailinator.com"
    user_home_page = @signup_page.signup "Fred", "Smith", user_email, "123456", false, true

    # verify user is signed in
    expect(user_home_page.expected_div?).to be true
    expect(user_home_page.expected_element.text).to include("Fred")
  end
end