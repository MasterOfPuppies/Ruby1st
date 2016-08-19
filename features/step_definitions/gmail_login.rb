
Given(/^a user goes to Google$/) do
  @home_page = HomePage.new
  @home_page.load
end

When(/^user inputs his username "([^"]*)" and password "([^"]*)"$/) do |login, password|
  @home_page.login login, password
end

Then(/^should appear logout button$/) do
  # sleep(5)
  @home_page.account_click
  expect(page).to have_selector(".//a[contains(text(),'Sign out')]", visible: true)
end


And(/^test failed$/) do
  expect(false).to be_true
end

Then(/^error message appears$/) do
  expect(page).to have_xpath(".//span[@class='error-msg']")
end