class Sendmail < ActionMailer::Base
  default from: "from@example.com"

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

    mail(to: 'thomas.webdesign@yahoo.com', subject: 'hello')
  end
end
