class UserMailer < ApplicationMailer
 default from: 'aayushi.malviya@clecotech.com'

  def welcome_email
    @user = params[:user]
    @@url  = 'localhost:3000'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
