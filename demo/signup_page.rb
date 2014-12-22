require_relative './user_home_page'
require 'watir-webdriver'

class SignupPage
  
  def initialize(browser, site_URL)
    @browser = browser
    @site_URL = site_URL
  end

  def visit
    @browser.goto @site_URL + "/signup"
    self
  end

  def signup(firstname, lastname, email, password, email_list, terms)
    firstname_field.set firstname
    lastname_field.set lastname
    email_field.set email
    password_field.set password

    if email_list
      email_list_checkbox.set
    else
      email_list_checkbox.clear
    end

    if terms
      terms_checkbox.set
    else
      terms_checkbox.clear
    end

    signup_button.click

    next_page = UserHomePage.new(@browser, @site_URL)
    Watir::Wait.until { next_page.loaded? }

    next_page
  end

  private

  def firstname_field
    @browser.text_field(:id => 'firstname')
  end

  def lastname_field
    @browser.text_field(:id => 'lastname')
  end

  def email_field
    @browser.text_field(:id => 'email')
  end

  def password_field
    @browser.text_field(:id => 'password')
  end

  def email_list_checkbox
    @browser.checkbox(:id => 'login-ecomm')
  end

  def terms_checkbox
    @browser.checkbox(:id => 'terms')
  end

  def signup_button
    @browser.button(:id => 'submit-login-modal')
  end
end # LoginPage