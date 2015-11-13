ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      "inga.h.chen@gmail.com",
    :password =>       "MQLMfMXg9KhZA6AP0HuzHw",
    :domain =>         'http://localhost:3002',
    :authentication => :plain
}