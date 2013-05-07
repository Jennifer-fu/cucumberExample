Feature:  Zhidao test

  Scenario:   anonymous user should login first before asking question
    Given anonymous user open zhidao page
    When user ask question
    Then login page should popup

  Scenario:   user can ask question after login
    Given anonymous user open zhidao page
    When user ask question
    Then login page should popup
    When user login
    Then user can see the question




