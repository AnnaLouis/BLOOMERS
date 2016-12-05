class BloomerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.bloomer_mailer.confirmation.subject
  #
  def creation_confirmation(bloomer)
    @bloomer = bloomer

    mail(
      to: @bloomer.user.email,
      subject: "Le profil #{@bloomer.name} a bien été créé"
      )
  end
end
