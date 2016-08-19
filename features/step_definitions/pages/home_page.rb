require_relative 'login_page/login_page'
require_relative 'new_email/new_email'
require_relative '../config/emails'

class HomePage < SitePrism::Page
  set_url "/"

  element :log_out, :xpath, ".//a[contains(text(),'Sign out')]"
  element :account_link, :xpath, ".//a[contains(@title,'Google Account')]"
  element :new_email, :xpath, ".//div[contains(text(),'COMPOSE')]"

  section :login_section, LoginPage, :xpath, ".//div[contains(@class,'pre-shift')] "
  section :email_section, New_Email, :xpath, ".//div[text()='New Message']"

  def login (username=Emails.get_email_1, password=Emails.get_password_1)
    wait_until_login_section_visible(5)
    login_section.set_username username
    login_section.set_password password
  end

  def new_email_click
    wait_for_new_email
    new_email.click
  end

  def new_email_send(receiver)

    email_section.send_email "#{receiver}"
  end

  def account_click
    wait_until_account_link_visible(5)
    account_link.click
  end


end