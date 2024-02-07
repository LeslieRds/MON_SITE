class ContactEmailJob < ApplicationJob
  queue_as :default

  def perform(contact)
    ContactMailer.with(contact: contact).new_contact_email.deliver_later
  end
end
