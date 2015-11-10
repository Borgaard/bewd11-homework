ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      "inga.h.chen@gmail.com",
    :password =>       "MQLMfMXg9KhZA6AP0HuzHw",
    :domain =>         'https://localhost:3000',
    :authentication => :plain
}