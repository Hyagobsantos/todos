# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview
  def too_lazy
    UserMailer.with(user: User.first).too_lazy
  end
end
