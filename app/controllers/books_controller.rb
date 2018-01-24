class BooksController < ApplicationController
    
    def index
        @books = Book.all
    end
    
    def show
        id = params[:id]
        @book = Book.find(id)
    end
    
    def new
        @book = Book.new
    end
    
end