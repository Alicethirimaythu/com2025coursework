class ApplicationMailer < ActionMailer::Base
  default to: "info@plantopia.com", from: 'from@plantopia.com'
  layout 'mailer'
end
