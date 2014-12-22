class SiteVariables
  @@v5env = 'test'
  @@author_email = 'knelson@caringbridge.org'
  @@visitor_email = 'knelson@caringbridge.com'
  @@author_password = 'Pag3394!'
  @@visitor_password = 'Pag3394!'
  @@sitename = 'kristennelson'
  
  @@browser
  
  def SiteVariables::browser
    @@browser
  end
  
  def SiteVariables::browser= (value)
    @@browser = value
  end
  
  def SiteVariables::v5env
    @@v5env
  end
  
  def SiteVariables::author_email
    @@author_emails
  end
  
  def SiteVariables::visitor_email
    @@visitor_email
  end
  
  def SiteVariables::author_password
    @@author_password
  end
  
  def SiteVariables::visitor_password 
    @@visitor_password 
  end
  
  def SiteVariables::sitename
    @@sitename
  end

end