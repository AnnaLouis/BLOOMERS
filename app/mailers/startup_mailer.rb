class StartupMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.startup_mailer.creation_confirmation.subject
  #
  def creation_confirmation
    @greeting = "Hi"

    mail(
       to: @startup.user.email
       subject: "Le profil #{@startup.name} a bien été créé"
       )
  end
end
