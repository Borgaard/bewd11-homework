class BooksController < ApplicationController
    def initialize
        @search=""
        @new_book = Book.new
    end
    
    def index
        !initialize
        @books = Book.all
        render "index"
    end
    
    def edit
        id = params[:id]
        @book = Book.find(id)
        render "edit"
    end
    
    def update
        book = params[:book]
        @db_book = Book.find(book[:id])
        @db_book.update(book_params)
        redirect_to "/books/"
    end
    
    def save
        !initialize
        @new_book = Book.new(book_params)
        @new_book.save
        if @new_book.valid?
            redirect_to "/books"
        else
            flash[:error] = :error
            redirect_to books_path
        end
    end
    
    def search
        @search = params[:search]
        @books = Book.where("title LIKE (?)", "%#{@search}%")
        if @books.empty? == true
            @books = Book.where("author LIKE (?)", "%#{@search}%")
        end
        if @books.empty? == true
            @books = Book.where("release_date LIKE (?)", "%#{@search}%")
        end
        render "index"
    end
    
    def delete
        @db_book = Book.find(params[:id])
        @db_book.destroy
        redirect_to "/books/"
    end
    
    
    
private
    def book_params
        params.require(:book).permit(:title,:author,:release_date,:image_url)
    end
end
