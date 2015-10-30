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
    
    def submit
        if params[:commit] == "Submit"
            !update
        elsif params[:commit] == "Save"
            !save
        elsif params[:commit] == "Search"
            !search
        end
    end
    
    
    def update
        book = params[:book]
        @db_book = Book.find(book[:id])
        @db_book.update(title: book[:title], 
                        author: book[:author], 
                        release_date: book[:release_date],
                        image_url: book[:image_url])
        !index
    end
    
    def save
        saved_book = params[:book]
        new_book = Book.create(title: saved_book[:title], 
                        author: saved_book[:author], 
                        release_date: saved_book[:release_date],
                        image_url: saved_book[:image_url])
        !index
    end
    
    def search
        !initialize
        searching = params[:search]
        @books = Book.where("title LIKE (?)", "%#{searching}%")
        if @books.empty? == true
            @books = Book.where("author LIKE (?)", "%#{searching}%")
        end
        if @books.empty? == true
            @books = Book.where("release_date LIKE (?)", "%#{searching}%")
        end
        render "index"
    end
    
end
