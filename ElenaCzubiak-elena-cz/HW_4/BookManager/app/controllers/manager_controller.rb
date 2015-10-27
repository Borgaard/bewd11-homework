class ManagerController < ApplicationController
    
    def index
       @books = Book.all
       
       render "index"
    end  
    def edit
       render "edit"
    end      
end
