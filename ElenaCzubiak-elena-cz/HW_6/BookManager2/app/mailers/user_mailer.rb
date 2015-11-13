class UserMailer < ApplicationMailer
    
        default from: "Book Manager <book@example.com>"

    def new_book(title, author)
        @title = title
        @author = author
        mail(to: "elenaczubiak@gmail.com", subject: "A new book was added to Book Manager")
    end
    
end
