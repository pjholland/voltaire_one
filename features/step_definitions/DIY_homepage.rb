Given(/^I am on the home page$/) do
  site.homepage.visit
  site.homepage.click_on(Homepage::STORE_FINDER)
end

When(/^i click on the store finder link$/) do
  site.homepage.click_on(Homepage::STORE_FINDER)
end

When(/^I enter my local store details$/) do
  site.storefinder.type(Storefinder::TOWN_ENTRY_FIELD, "Warrington")
  site.storefinder.click_on(Storefinder::FIND_STORE_BUTTON)
end

Then(/^I will see my local store details$/) do
  sleep 1
  site.storefinder.displayed?(Storefinder::TOWN_LIST)
end



