
class LoginPage < SitePrism::Section


  element :input_username, :css, "#Email"
  element :next_button, :css, "#next"
  element :input_password, :css, "#Passwd"
  element :signin_button, :css, "#signIn"


  def set_username (username)
    wait_for_input_username
    input_username.set "#{username}"
    next_button.click
  end

  def set_password (password)
    wait_for_input_password
    input_password.set "#{password}"
    signin_button.click
  end


end