class Emails
  class << self
    unless @instance
      EMAIL_USER_1 = "testruby256@gmail.com"
      PASSWORD_USER_1 = "test256ruby"
      EMAIL_USER_2 = "testruby257@gmail.com"
      PASSWORD_USER_2 = "test257ruby"

      def get_email_1
        EMAIL_USER_1
      end

      def get_password_1
        PASSWORD_USER_1
      end

      def get_email_2
        EMAIL_USER_1
      end

      def get_password_2
        PASSWORD_USER_1
      end
    end
    @instance ||= self
  end
end