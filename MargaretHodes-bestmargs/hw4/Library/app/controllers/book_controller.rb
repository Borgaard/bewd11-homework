class BookController < ApplicationController
    def index
        @books = Book.all   
        
        @book = Book.new
                
        render "index"
    end
    
    
    def create
        #User.create(firstname: params[:user][:firstname], lastname: params[:user][:lastname], username: params[:user][:username], role: params[:user][:role])
        # added [:user] when moved from form_do to form_for
        book = Book.new(book_params)  #or User.create(user_params) instead of two lines
        
        book.save
        
        redirect_to "/books" #can redirect back to any route
    end
    
   
private  #everything under is a private mehtod, not accessible outside of this class
    
    def book_params
        params.require(:book).permit(:title, :author, :release_date, :image)
    end
end
