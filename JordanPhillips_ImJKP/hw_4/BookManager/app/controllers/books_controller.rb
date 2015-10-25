class BooksController < ApplicationController

def index
  @books = Books.all
  render "index"
end

def edit
  render "edit"
end

end
