class ContactMailer < ActionMailer::Base
default to: "byrne.daniel87@gmail.com"

 def contact_email(name, email, message)
	 @name = name
	 @email = email
	 @message = message

 	mail(from: email, subject: "DanielJohnApps Contact Form Message")
	end
end