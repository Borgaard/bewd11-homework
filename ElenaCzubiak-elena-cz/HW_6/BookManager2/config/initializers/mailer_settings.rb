ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      "elenaczubiak@gmail.com",
    :password =>       "sd3SV2oLlL7p-hC2K2yLWg",
    :domain =>         'http://uekk00e5407e.elenacz.koding.io:3002',
    :authentication => :plain
}