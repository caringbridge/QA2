require_relative '../signup_page'
require_relative '../site_variables'
require_relative '../user_home_page'
require 'watir-webdriver'

# These two variables could live somewhere else where we could iterate through different browsers
browser = Watir::Browser.new :chrome
site_URL = 'http://'+SiteVariables.v5env+'.caringbridge.org'

signup_page = SignupPage.new(browser, site_URL)

signup_page.visit
time_in_secs_now = Time.now.to_i.to_s
user_email_base = 'fsmith' + time_in_secs_now
user_email = user_email_base + "@mailinator.com"
user_home_page = signup_page.signup "Fred", "Smith", user_email, "123456", false, true

# verify user is signed in
puts user_home_page.expected_element.text
puts user_home_page.expected_div?
puts (user_home_page.expected_element.text.include? "Fred")
browser.close