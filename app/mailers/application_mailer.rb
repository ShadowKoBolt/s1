class ApplicationMailer < ActionMailer::Base
  default from: ENV["application_mailer_from"]
  layout "mailer"
end
