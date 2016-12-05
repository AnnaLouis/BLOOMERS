class ApplicationMailer < ActionMailer::Base
  default from: 'hello@bloomers.fr'
  append_view_path Rails.root.join('app', 'views', 'mailers')
  # layout 'mailer'
end
