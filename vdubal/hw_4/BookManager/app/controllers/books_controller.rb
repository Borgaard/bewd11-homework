class BooksController < ApplicationController


def index
    @books = Book.all
    @book = Book.new
    render "index"
end


def edit 
        @book = Book.find(params[:id])
    end

def create
    Book.create(book_params)
# book = Book.new(user_params)
# book.save
 redirect_to "/"
end

def update
    book = Book.find(params[:id])
    book.update_attributes(book_params)
    redirect_to "/"
    end
    
def delete
    book = Book.find(params[:id])
    book.update_attributes(book_params).destroy
    redirect_to "/"
    end 
    
    



# def update
#    Book.update(book_params)
# book = Book.new(book_params)
# book.save
# redirect_to "/"
#end



private
    def book_params
        params.require(:book).permit(:title, :author, :release_date, :image)
    end
    
end