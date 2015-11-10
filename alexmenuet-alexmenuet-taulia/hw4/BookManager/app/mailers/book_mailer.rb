class BookMailer < ApplicationMailer
    default from: 'Alex Menuet <menuetal@gmail.com>'
    layout 'email'
    
    def new_book_email(user, book)
        @user = user
        @new_book = book
        mail(to: @user.email, subject: 'New Book Available For You')
    end
    
end
