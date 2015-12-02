class BooksController < ApplicationController
    def initialize
            @search=""
            @new_book = Book.new
    end
    
    def index
        if user_signed_in?
            @user = current_user
            !initialize
            @books = Book.all
            render "index"
        else
            redirect_to new_user_session_path
        end
    end
    
    def edit
        if user_signed_in?
            id = params[:id]
            @book = Book.find(id)
            render "edit"
        else
            redirect_to new_user_session_path
        end
    end
    
    def update
        if user_signed_in?
            book = params[:book]
            @db_book = Book.find(book[:id])
            @db_book.update(book_params)
            redirect_to "/books/"
        else
            redirect_to "users/sign_in"
        end
    end
    
    def save
        if user_signed_in?
            !initialize
            @new_book = Book.new(book_params)
            @new_book.save
            if @new_book.valid?
                users = User.all
                users.each do |user|
                    BookMailer.new_book_email(user, @new_book).deliver_now
                end
                redirect_to "/books"
            else
                flash[:error] = :error
                redirect_to books_path
            end
        else
            redirect_to "users/sign_in"
        end    
    end
    
    def search
        if user_signed_in?
            @search = params[:search]
            @books = Book.where("title LIKE (?)", "%#{@search}%")
            if @books.empty? == true
                @books = Book.where("author LIKE (?)", "%#{@search}%")
            end
            if @books.empty? == true
                @books = Book.where("release_date LIKE (?)", "%#{@search}%")
            end
            render "index"
        else
            redirect_to "sign_in_and_redirect"
        end
    end
    
    def delete
        if user_signed_in?
            @db_book = Book.find(params[:id])
            @db_book.destroy
            redirect_to "/books/"
        else
            redirect_to "users/sign_in"
        end
    end
    
    
private
    def book_params
        params.require(:book).permit(:title,:author,:release_date,:image_url)
    end
end
