class UserMailer < ApplicationMailer
  default from: "info@bikeshopberlin.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'sabrina.leskovsek@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end