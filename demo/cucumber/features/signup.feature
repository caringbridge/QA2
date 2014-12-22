Feature: Caring Bridge Signup

Scenario: A user sign up to join Caring Bridge
  Given a user goes to  the Caring Bridge site
  When they fill first name field with "Fred"
  Then expected element contains "Fred"