class TestVariables
  @@logfile_path = 'C:\\Users\\' + Etc.getlogin + '\\Desktop\\logfile.txt'
  @@passing_state = true
  @@test_name
  
  def TestVariables::logfile_path
    @@logfile_path
  end
  
  def TestVariables::passing_state
    @@passing_state
  end
  
  def TestVariables::passing_state= (value)
    @@passing_state = value
  end
  
  def TestVariables::test_name
    @@test_name
  end
  
  def TestVariables::test_name= (value)
    @@test_name = value
  end
end