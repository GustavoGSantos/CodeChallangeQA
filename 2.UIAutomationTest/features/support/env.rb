require 'cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'pageHelper.rb'

#Configuring global modules
World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)
World(Helper)

Capybara.configure do |config|
    #Configuring drive to use selenium chrome
    config.default_driver = :selenium_chrome  
    #Configuring host to use when needs visit specif url
    config.app_host = 'https://www.ze.delivery/' 
    #Wait time default
    config.default_max_wait_time = 5 
    #Configuring chrome to open maximized
    Capybara.page.driver.browser.manage.window.maximize
end