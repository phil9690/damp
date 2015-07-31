class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      ContactMailer.email_contact(@contact).deliver
      ContactMailer.enquiry_auto_respond(@contact).deliver
      flash[:notice] = "Message sent! Thank you for getting in contact, we will get back to you ASAP."
      redirect_to contact_path
    else
      flash[:alert] = "There was an error sending your message, please check all fields and send again."
      render :action => 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :body, :nickname)
  end

end
