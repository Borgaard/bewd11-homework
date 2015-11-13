class ApplicationMailer < ActionMailer::Base
  default from: "book@manager2.com"
  layout 'email'
end
