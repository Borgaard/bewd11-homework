class BooksController < ApplicationController
	def index
		@books = Book.all
		render "index"
	end

	def show
		@book = Book.find(params[:id])
	end

	def new
		@book = Book.new
	end

	def edit
		@book = Book.find(params[:id])
		render "edit"
	end

	def create
		book = Book.create(book_params)

		if book.valid?
			redirect_to "/"
		else
			flash[:error] = "Form validation failed"
			redirect_to books_path
		end
	end

	def update
		@book = Book.find(params[:id])
		if @book.update_attributes(book_params)
			redirect_to '/'
		else
			render 'edit'
		end
	end

	def destroy
		@book = Book.find(params[:id])
		book.destroy
		redirect_to "/"
	end

	private
		def book_params
			params.require(:book).permit(:title, :author, :release_date, :image)
		end	
end