ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      "margaret.hodes@gmail.com",
    :password =>       "W3-QcLmh5EgZWf1-KePMnA",
    :domain =>         'http://ubkk3f875f32.bestmargs.koding.io:3000/',
    :authentication => :plain
}