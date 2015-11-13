ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      "menuetal@gmail.com",
    :password =>       "9fYEoEnJNO-YK0GbQeoe8w",
    :domain =>         'http://uzkk3e3b8aa8.zander2.koding.io:4000',
    :authentication => :plain
}