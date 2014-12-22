require_relative '../../../signup_page'
require_relative '../../../site_variables'
require 'watir-webdriver'

# To install cucumber: 
# > sudo gem install cucumber
# Then to run, enter in cucumber directory:
# > cucumber

Given /^a user goes to  the Caring Bridge site$/ do
  @browser = Watir::Browser.new :chrome
  @site_URL = 'http://'+SiteVariables.v5env+'.caringbridge.org'
  @signup_page = SignupPage.new(@browser, @site_URL)
  @signup_page.visit
end

When /^they fill first name field with (.*)$/ do |firstname|
  time_in_secs_now = Time.now.to_i.to_s
  user_email_base = 'fsmith' + time_in_secs_now
  user_email = user_email_base + "@mailinator.com"
  @user_home_page = @signup_page.signup firstname, "Smith", user_email, "123456", false, true
end

Then /^expected element contains (.*)$/ do |firstname|
  @user_home_page.expected_element.text.include? firstname
  @browser.close
end