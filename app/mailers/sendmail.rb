class Sendmail < ActionMailer::Base
  default from: "website@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sendmail.contact.subject
  #
  def contact(params)

    @email = params["contact"][:email]
    @name = params["contact"][:name]
    @phone = params["contact"][:phone]
    @message = params["contact"][:message]
    @file = params["contact"][:file]
   
   # attachments[@file] = File.read("#{@file}")
    attachments["attachments"] = File.read("#{@file.path}") if attachments["attachments"]
    mail(to: 'thomas.webdesign@yahoo.com', subject: 'hello', from: "#{@email}")
  end
end
