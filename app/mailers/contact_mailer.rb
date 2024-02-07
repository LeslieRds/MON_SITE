class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def contact_email(contact)
    @contact = contact
    mail(to: 'leslie.rados@myikigai.fr', subject: 'Nouveau message de contact')
  end
end
