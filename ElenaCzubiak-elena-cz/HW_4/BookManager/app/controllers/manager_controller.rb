class ManagerController < ApplicationController
    
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
       Book.create(book_params) 
       
       redirect_to "/books"
    end    
    
    def update
        book = Book.find(params[:id]).update_attributes(book_params)
        
        redirect_to "/books"
    end    
        
private    
    def book_params
        params.require(:book).permit(:title, :author, :date, :image)
    end    
    
end
