class StoresController < ApplicationController
	def index
		@stores = Book.find(params[:book_id]).stores
		
		@store = Store.new
		
		render "index"
	end
	
	def new
		@book = Book.find(params[:book_id])
		
		@store = Store.new
		
		render "new"
	end
	
	def create
		Book.find(params[:book_id]).stores.create(store_params)
		
		redirect_to books_path
	end
	
	#this method may be completely wrong; not tested
	def destroy
		store = Book.find(params[:id]).stores.find(params[:id])
		
		store.destroy
		
		redirect_to "/books"
	end
	
private	
	def store_params
		params.require(:store).permit(:store_name, :address, :store_url)
	end

end