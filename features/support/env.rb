require 'site_prism'
require 'capybara/cucumber'
require 'selenium-webdriver'



Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = "http://www.gmail.com"
Capybara.page.driver.browser.manage.window.maximize
Capybara.default_selector = :xpath
Capybara.ignore_hidden_elements = false
Capybara.default_max_wait_time = 2


#
# Capybara.configure do |config|
#
# end