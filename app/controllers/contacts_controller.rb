class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?  # Supposons que `valid?` vérifie les données de formulaire nécessaires.
      # Logique pour envoyer les données de contact (e.g., via ActionMailer).
      ContactMailer.contact_email(@contact).deliver_now
      redirect_to root_url, notice: "Votre message a été envoyé avec succès."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:surname, :name, :company, :number, :email, :message, :nickname)
  end
end
