class LoginPage < Page
  def displayed?
    @browser.find_element(:id=>"passport-login-pop").displayed?
  end

  def login username,password
    @browser.find_element(:id=>"TANGRAM__PSP_8__userName").send_keys(username)
    @browser.find_element(:id=>"TANGRAM__PSP_8__password").send_keys(password)
    @browser.find_element(:id=>"TANGRAM__PSP_8__submit").click
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @browser.find_element(:id => "user-name").displayed? }
  end
end