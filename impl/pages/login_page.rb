class LoginPage < Page
  def displayed?
    @browser.find_element(:id=>"passport-login-pop").displayed?
  end
end