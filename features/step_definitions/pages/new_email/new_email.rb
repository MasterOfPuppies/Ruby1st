class New_Email<SitePrism::Section

  element :receiver, :xpath, ".//textarea[contains(@aria-label,'To')]"
  element :subject, :xpath, ".//input[@placeholder='Subject']"
  element :send_email, :xpath, ".//div[contains(text(),'Send')]"
  element :msg_body, :xpath, ".//div[@aria-label='Message Body']"

  def send_email(receiver_txt, email_subject="subject")
    #wait_until_receiver_visible(5)
    receiver.set "#{receiver_txt}"
    subject.set "#{email_subject}"
    msg_body.set "WOW! EMAIL!"
    send_email.click
  end
end