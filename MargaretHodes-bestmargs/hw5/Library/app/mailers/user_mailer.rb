class UserMailer < ApplicationMailer
    default from: "Margaret <margaret.hodes@gmail.com>"

    def say_hello(name)
        @name = name
        mail(to: "test@test.com", subject: "Hello there!")
    end
end