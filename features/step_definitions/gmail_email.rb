And(/^user logins as "([^"]*)"$/) do |email|
  @home_page = HomePage.new
  @home_page.login email
end

When(/^user sends an email to "([^"]*)"$/) do |email_of_receiver|
  @home_page.new_email_click
  @home_page.new_email_send email_of_receiver
end