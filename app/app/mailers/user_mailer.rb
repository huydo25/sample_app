class UserMailer < ApplicationMailer
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end
<<<<<<< HEAD:sam/app/app/mailers/user_mailer.rb
  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
=======
  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
>>>>>>> 13aa1d736105fad294248f18c0ec8c22f6a81a63:app/app/mailers/user_mailer.rb
  end
end
