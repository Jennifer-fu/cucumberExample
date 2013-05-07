Given(/^anonymous user open zhidao page$/) do
  open_zhidao_page
end

When(/^user ask question$/) do
  on(ZhidaoPage) do
    ask "I am a QA, I am doing test for cucumber, please help me to find some learning material"
  end
end

Then(/^login page should popup$/) do
  raise "Fail to popup login page" unless login_page_popup?
end

When(/^user login$/) do
  on(LoginPage) do
     login "username", "password"
  end
end

Then(/^user can see the question$/) do
  on(QuestionPage) do
    raise "Fail to submit question" unless question == "I am a QA, I am doing test for cucumber, please help me to find some learning material"
  end
end
