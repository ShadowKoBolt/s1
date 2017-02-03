class ContactController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.new_contact(@contact).deliver_now
      redirect_to contact_path, notice: t(".success")
    else
      render :index
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :telephone, :message)
  end
end
