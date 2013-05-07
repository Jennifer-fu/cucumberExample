class QuestionPage < Page

  def question
    @browser.find_element(:class=>"ask-title").text
  end
end