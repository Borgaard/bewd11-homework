class BooksController < ApplicationController
    def index
        @books = Book.all
        
        @book = Book.new
        
        render 'index'
    end 
    
    def create
        book = Book.new(book_params)
        book.save
        redirect_to books_path
    end
    
    def edit
        @book = Book.find(params[:id])
        render 'edit'
    end
    
    def update
        book = Book.find(params[:id])
        book.update_attributes(user_params)
        redirect_to books_path
    end
    
    def destory
        book = Book.find(params[:id])
        book.destroy
        redirect_to books_path
    end
    
private
    
    def book_params
        params.require(:book).permit(:title, :author, :release_date, :image)
    end
end