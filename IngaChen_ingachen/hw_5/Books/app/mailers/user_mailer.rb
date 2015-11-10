class UserMailer < ActionMailer::Base
  default from: "notifications@booksapp.com"

  def book_added(user, book)
  	@user = user
  	@book = book
  	mail(to: "inga.h.chen@gmail.com", subject: "A new book has been added!")
  end

end
