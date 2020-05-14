#Setting to take a screenshot after each test and save the image with the name and status of the scenario
After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')
    
    if scenario.failed?
        screenshot(scenario_name.downcase!, 'Failed')
    else
        screenshot(scenario_name.downcase!, 'Passed')    
    end
end