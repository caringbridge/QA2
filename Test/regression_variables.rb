class RegressionVariables
  @@passing_state = true
  @@regression_name = ''
  @@screen_size = ''
  @@browser = ''
  
  def RegressionVariables::passing_state
    @@passing_state
  end
  
  def RegressionVariables::passing_state= (value)
    @@passing_state = value
  end
  
  def RegressionVariables::regression_name
    @@test_name
  end
  
  def RegressionVariables::regression_name= (value)
    @@test_name = value
  end
  
  def RegressionVariables::screen_size
    @@screen_size
  end
  
  def RegressionVariables::screen_size= (value)
    @@screen_size = value
  end
  
  def RegressionVariables::browser
    @@browser
  end
  
  def RegressionVariables::browser= (value)
    @@browser = value
  end
end