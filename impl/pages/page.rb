class Page
  def initialize(browser)
    @browser=browser
  end

  def system_error_box
    @browser.element(:id, 'top_message')
  end
end