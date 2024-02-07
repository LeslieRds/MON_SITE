class Contact < MailForm::Base
  attribute :surname,   validate: true
  attribute :name,      validate: true
  attribute :company,   validate: true
  attribute :number,    validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,    validate: true
  attribute :nickname,  captcha: true #trick bots

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact Form Inquiry",
      :to => "your.email@address.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
