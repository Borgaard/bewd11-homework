class BooksController < ApplicationController
    
    before_action :authenticate_user!
    
    def index
       @books = Book.all
       @book= Book.new
       
       render "index"
    end  
    def edit
       @book = Book.find(params[:id])
       
       render "edit"
    end 
    
    def create
       book = Book.new(book_params)
       book.save
       
       if book.valid?
            redirect_to "/books"
            UserMailer.new_book(book.title, book.author).deliver_now
        else 
            flash[:error] = "Please fill in all the fields"
            redirect_to "/books"
        end
        
       
    end  
    
    
    def update
        book = Book.find(params[:id]).update_attributes(book_params)
        
        redirect_to "/books"
    end 
    
    def destroy
        book = Book.find(params[:id])
        book.destroy
        
        redirect_to "/books"
    end    
        
private    
    def book_params
        params.require(:book).permit(:title, :author, :date, :image)
    end    
    
end
