class BooksController < ApplicationController
    #def show
        #@books = Book.find(params[:isbnnumber])
    #end
    
    def new
    end
    
    def create
        #render plain: params[:isbn].inspect
        @books = Book.new(book_params)
        @books.save
        redirect_to @books
    end
    
private 
    def book_params
        params.require(:books).permit(:isbn, nil)
    end
end
