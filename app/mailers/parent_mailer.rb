class ParentMailer < ActionMailer::Base
  default from: "abdishwak@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.parent_mailer.registration_confirmation.subject
  #
  def registration_confirmation(parent)
    @parent = parent

    mail to: @parent.email, subject: "Registration confirmation"
  end
end
