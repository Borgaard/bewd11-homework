class StoresController < ApplicationController
    def index
       @stores = Store.all
       @new_store = Store.new
       render "store_index"
    end
    
    def edit
        id = params[:id]
        @store = Store.find(id)
        render "store_edit"
    end
    
    def create
        @new_store = Store.new(store_params)
        @new_store.save
        redirect_to stores_path
    end
    
    def update
        store = params[:store]
        @db_store = Store.find(store[:id])
        @db_store.update(store_params)
        redirect_to stores_path
    end
    
    def show
        @add_book = Book.new
        @all_books = Book.new
        store_id = params[:store_id]
        @store = Store.find(store_id)
        !searchbook
        if @all_books
            @all_books = Book.find_by_sql "SELECT b.* FROM books b WHERE b.id NOT in (SELECT j.book_id FROM joined_tables j WHERE j.store_id = #{store_id})"
        else
            @all_books = Book.all
        end
        
        
        @book_list = @store.books.all
        render "store_libraries"
    end
    
    def searchbook
    end
    
    def add
        book_id = params[:book][:id]
        store_id = params[:store_id]
        book = Book.find(book_id)
        store = Store.find(store_id)
        store.books << book
        redirect_to store_library_path
        
    end
    
private
    def store_params
        params.require(:store).permit(:name,:store_type,:city,:street,:image_url)
    end    
end
