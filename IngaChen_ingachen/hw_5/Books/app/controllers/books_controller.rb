class BooksController < ApplicationController
	def index 
		@books = Book.all
	end

	def show 
		@book = Book.find(params[:id])
	end

	def new
		@book = Book.new
	end

	def edit
		@book = Book.find(params[:id])
		render 'edit'
	end

	def create 
		@book = Book.create(book_params)
		@user = User.where("emails = ?", params[:email])
		UserMailer.book_added(@user, @book).deliver # or .deliver!
		redirect_to "/"
		
		# if @book.valid?
		# 	UserMailer.book_added("Inga Chen").deliver_now
		# 	redirect_to "/"
		# else
		# 	flash[:error] = "Form validation failed"
		# 	redirect_to books_path
		# end
	end

	def update
		book = Book.find(params[:id])
		if book.valid?
			book.update_attributes(book_params)
			redirect_to '/'
		else
			flash[:error] = "Book not saved. Fill out all fields."
			render 'edit'
		end
	end

	def destroy
		book = Book.find(params[:id])
		book.destroy
		redirect_to '/'
	end

	private
		def book_params
			params.require(:book).permit(:title, :author, :release_date, :image)
		end

end
