class StoresController < ApplicationController
    
def index
   @stores = Book.find(params[:book_id]).stores 
end    

def new
   @book = Book.find(params[:book_id])
   @store = Store.new
   
end    
    
def create
   Book.find(params[:book_id]).stores.create(store_params)
   
   redirect_to books_path
end    

def store_params
    params.require(:store).permit(:name, :location)
end    
    
end

    



