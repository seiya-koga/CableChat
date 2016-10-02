class UserMailer < ActionMailer::Base
  default from: "nearby201609@gmail.com"
 
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.registration_confirmation.subject
  #
  def registration_confirmation
    @greeting = "Hi"
 
    mail to: "nearby201609@gmail.com"
  end
end