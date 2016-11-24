class ContactMailer < ApplicationMailer
  def new_contact(contact)
    @contact = contact
    mail to: ENV["contact_mailer_to"]
  end
end
