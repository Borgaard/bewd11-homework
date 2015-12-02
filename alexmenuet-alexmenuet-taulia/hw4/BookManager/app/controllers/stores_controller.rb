class StoresController < ApplicationController
    def index
        if user_signed_in?
            @stores = Store.all
            @new_store = Store.new
            @user = current_user
            render "store_index"
        else
            redirect_to "/users/sign_in"
        end
    end
    
    def edit
        if user_signed_in?
            id = params[:id]
            @store = Store.find(id)
            render "store_edit"
        else
            redirect_to "/users/sign_in"
        end
    end
    
    def create
        if user_signed_in?
            @new_store = Store.new(store_params)
            @new_store.save
            redirect_to stores_path
        else
            redirect_to "/users/sign_in"
        end
    end
    
    def update
        if user_signed_in?
            store = params[:store]
            @db_store = Store.find(store[:id])
            @db_store.update(store_params)
            redirect_to stores_path
        else
            redirect_to "/users/sign_in"
        end
    end
    
    def show
        if user_signed_in?
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
        else
            redirect_to "/users/sign_in"
        end
    end
    
    def searchbook
        if user_signed_in?
        else
            redirect_to "/users/sign_in"
        end
    end
    
    def add
        if user_signed_in?
            book_id = params[:book][:id]
            store_id = params[:store_id]
            book = Book.find(book_id)
            store = Store.find(store_id)
            store.books << book
            redirect_to store_library_path
        else
            redirect_to "/users/sign_in"
        end
    end
        
    
private
    def store_params
        params.require(:store).permit(:name,:store_type,:city,:street,:image_url)
    end    
end
