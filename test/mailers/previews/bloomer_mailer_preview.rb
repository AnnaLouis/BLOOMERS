class UserMailerPreview < ActionMailer::Preview
 def welcome
   user = User.first
   UserMailer.creation_confirmation(user)
 end
end

