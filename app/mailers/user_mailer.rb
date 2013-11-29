class UserMailer < ActionMailer::Base
  default from: "vfrancesc@gmail.com"
  
  def welcome_email(user)
    @user = user
    @url = 'http://basicrailsbox-51521.euw1.actionbox.io/clubs/1/users/new'
    mail(to: @user.email, subject: 'You have registered to Guezz')
  end
  
  def new_user(user)
    @user = user
    mail(to: 'vfrancesc@gmail.com', subject: 'New Registered User')
  end

end