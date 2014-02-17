class UserMailer < ActionMailer::Base
 default from: "do-not-reply@test.com"

  def contact_email(contact)
  	 @contact = contact
  	 mail(to: ENV["OWNER_EMAIL"], from: @contact.email, :subject => "Website Contact Form")
  	end
end
