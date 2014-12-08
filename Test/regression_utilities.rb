def start_regression(regressionName)
  RegressionVariables.regression_name = regressionName
  write_to_log('-------- Start ' + regressionName.to_s + ' Regression at ' + DateTime.now.to_s + ' --------')
end

def end_regression
  if RegressionVariables.passing_state
    write_to_log('-------- Regression Passed --------')
  else
    write_to_log('-------- Regression Failed --------')
  end
  
  write_to_log('-------- End ' +RegressionVariables.regression_name.to_s + ' Script at ' + DateTime.now.to_s + ' --------')
end
