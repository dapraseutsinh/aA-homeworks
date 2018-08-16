class UserMailer < ApplicationMailer
  default from: 'meowth@cats99.com'

  def welcome_email(user)
    @user = user
    url = 'http://cats99.com/example_login'
    mail(to: user.email, subject: 'Welcome to cats99!')
  end
end
