require 'rubygems'
require 'selenium-webdriver'

  Before do
    @browser = Selenium::WebDriver.for :firefox
    @browser.manage.timeouts.implicit_wait = 3 #3 seconds
  end


After do |scenario|
  if scenario.failed?
    Dir::mkdir('screenshots') if not File.directory?('screenshots')
    screenshot_name = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    @browser.save_screenshot screenshot_name
    embed screenshot_name, 'image/png'
  end
  @browser.close
end
