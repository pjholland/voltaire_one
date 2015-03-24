Given(/^I log on to contact centre$/) do

  site.homepage.visit
  site.homepage.type(Homepage::USER_EMAIL, 'hub_admin@fco.dev')
  site.homepage.type(Homepage::USER_PASSWORD, 'n74J994e8784F27m74244Cq6243xJu')
  site.homepage.click_on(Homepage::SIGN_IN_BUTTON)

end

Then(/^I should see the correct elements$/) do

  site.homepage.find(Homepage::MAP_LINK).click

end


Then(/^I am able to log out$/) do

  site.homepage.enabled?(Homepage::LOG_IN_LINK).should equal true

end

Given(/^the page should have content "(.*?)"$/) do |text|

  site.homepage.page_content.should include(text)

end


