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
         book = Book.create(book_params)
        if book.valid? 
            redirect_to "/books"
        else
            flash[:error] = "Form validation failed" 
            redirect_to "/books"
        end
end



def update
    book = Book.find(params[:id])
    book.update_attributes(book_params)
    redirect_to "/books"
end
    
    
 
def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to "/books"
end
    


private
    def book_params
        params.require(:book).permit(:title, :author, :release_date, :image)
    end
    
end