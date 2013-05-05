class ZhidaoPage < Page
  def open
    @browser.get "http://zhidao.baidu.com"
  end

  def ask question
    @browser.find_element(:id=>"ask-btn").click
    @browser.find_element(:id=>"title-area").send_keys question
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @browser.find_element(:id => "category-con").text!="" }
    @browser.find_element(:id=>"submit-btn").click
  end
end