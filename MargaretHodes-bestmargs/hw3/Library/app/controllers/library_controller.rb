class LibraryController < ApplicationController
    def index
        @books = Book.all   
        
        @book = Book.new
                
        render "index"
    end
    
	def edit
		@book = Book.find(params[:id])
		
		render "edit"
	end
    
    def create
        #User.create(firstname: params[:user][:firstname], lastname: params[:user][:lastname], username: params[:user][:username], role: params[:user][:role])
        # added [:user] when moved from form_do to form_for
        book = Book.new(book_params)  #or User.create(user_params) instead of two lines
        
        book.save
        
        if book.valid?
            redirect_to "/" #can redirect back to any route
		else
			flash[:error] = "Form validation failed"
			redirect_to books_path
		end
        
    end
    
	def update
		book = Book.find(params[:id])
		
		book.update_attributes(book_params)
		
		redirect_to "/"
	end
    
   
	def destroy
		book = Book.find(params[:id])
		
		book.destroy
		
		redirect_to "/"
	end   
   
private  #everything under is a private mehtod, not accessible outside of this class
    
    def book_params
        params.require(:book).permit(:title, :author, :release_date, :image)
    end
end
	
