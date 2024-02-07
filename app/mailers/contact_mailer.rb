class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def contact_email(contact)
    @contact = contact
    mail(to: 'hello@myikigai.fr', subject: 'Nouveau message de contact')
  end
end
