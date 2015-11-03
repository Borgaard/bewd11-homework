class StoreController < ApplicationController


	def index
		@stores = Book.find(params[:title]).stores
	end
	
	def new
		@book = Book.find(params[:title])
		@store = Store.new
	end
	
	def create
		Book.find(params[:title]).stores.create(store_params)
		
		redirect_to books_path
	end
	
	def store_params
		params.require(:store).permit(:store_name, :address, :store_url)
	end

end
