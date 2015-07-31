class ContactMailer < ApplicationMailer

  def email_contact(contact)
    @name = contact.name
    @email = contact.email
    @message = contact.body
    mail(to: 'northeastdmsnotification@gmail.com', subject: "Email enquiry from #{@name}", from: @email)
  end

  def enquiry_auto_respond(contact)
    @email = contact.email
    mail(to: "#{@email}", subject: "Thank you for your message, we will get in touch with you as soon as possible.")
  end

end
