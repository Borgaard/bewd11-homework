class BookController < ApplicationController
	def index
		@books = Library.all
		render "index"
	end

	def show
		@book = Library.find(params[:id])
	end

	def new
		@book = Library.new
	end

	def edit
		@book = Library.find(params[:id])
		render "edit"
	end

	def create
		@book = Library.new(book_params)

		if @book.save
			redirect_to @book
		else
			render 'new'
		end
	end

	def update
	end

	private
		def book_params
			params.require(:book).permit(:title, :author, :release_date, :image)
		end	
end