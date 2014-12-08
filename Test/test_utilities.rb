def start_test(testName)
  TestVariables.passing_state = true
  TestVariables.test_name = testName
  write_to_log('-------- Start ' + testName.to_s + ' Script at ' + DateTime.now.to_s + ' --------')
  write_to_log('-------- Running on ' + RegressionVariables.screen_size.to_s + ' screen in ' + RegressionVariables.browser.to_s + ' --------')

end

def end_test
  if TestVariables.passing_state
    write_to_log('-------- Test Case Passed --------')
  else
    write_to_log('-------- Test Case Failed --------')
  end
  
  write_to_log('-------- End ' +TestVariables.test_name.to_s + ' Script at ' + DateTime.now.to_s + ' --------')
end

def pass(message)
  write_to_log('Passed: ' + message.to_s)
end

def fail(message)
  write_to_log('Failed: ' + message.to_s)
  TestVariables.passing_state = false
  RegressionVariables.passing_state = false
end

def write_to_log(logMessage)
  log_file = File.open(TestVariables.logfile_path, 'a')
  log_file.write(logMessage)
  log_file.write("\n")
  log_file.close
  puts logMessage
end