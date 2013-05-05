module Navigation
  def open_zhidao_page
    page=ZhidaoPage.new(@browser)
    page.open
  end

  def login_page_popup?
    page=LoginPage.new(@browser)
    page.displayed?
  end

end
