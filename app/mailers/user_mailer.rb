class UserMailer < ApplicationMailer
  def too_lazy
    @user = params[:user]

    mail(
      to: @user.email,
      subject: "Você precisa fazer as coisas!"
    )

  end
end
