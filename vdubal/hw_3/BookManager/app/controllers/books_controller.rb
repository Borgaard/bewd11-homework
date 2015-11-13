class BooksController < ApplicationController


def index
    @books = Book.all
    @book = Book.new
    render "index"
end

def edit 
    render "edit"
end




def create
    Book.create(user_params)
# book = Book.new(user_params)
# book.save
        
 redirect_to "/"
end

private
    def user_params
        params.require(:book).permit(:title, :author, :release_date, :image)
    end
    
end