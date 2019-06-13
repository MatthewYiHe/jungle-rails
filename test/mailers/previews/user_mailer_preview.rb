class UserMailerPreview < ActionMailer::Preview
  def conformation_email(order)
    UserMailer.conformation_email(order)
  end
end