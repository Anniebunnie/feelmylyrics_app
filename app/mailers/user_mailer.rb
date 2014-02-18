class UserMailer < ActionMailer::Base
  default from: "anniebunnie@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.greetings.subject
  #
  def welcome_user(user)
    @user = user
    @url = 'http://mailing_app.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to Feel My Lyrics!!!')
  end
end

