require './site_variables'

def logout
  sleep(1)
  SiteVariables.browser.goto 'http://'+SiteVariables.v5env+'.caringbridge.org/auth/signout'
end

def site_login
  SiteVariables.browser = Watir::Browser.new :chrome
  #@b = Watir::Browser.new :firefox
  SiteVariables.browser.cookies.clear
  SiteVariables.browser.driver.manage.window.maximize
  SiteVariables.browser.goto 'http://'+SiteVariables.v5env+'.caringbridge.org'
end

def start_site
  site_login
  #close_cms 
  sleep(1)
end

def close_site
  sleep(1)
  SiteVariables.browser.quit
end