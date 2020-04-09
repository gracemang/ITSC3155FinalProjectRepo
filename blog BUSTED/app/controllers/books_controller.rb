class BooksController < ApplicationController
   # def show
       # @book = Book.find(params[:isbnnumber])
    #end
    
    def new
    end
    
    def create
        #render plain: params[:isbn].inspect
        # the above code will print the isbn number in a has format
        
        ## the code below does not work. No idea how to fix it as of right now
        @books = Book.new(book_params)
        #@books.save
        redirect_to @books
    end
    
    
    
private 
    # code doesn't work either. It says that :books does not have a value
    def book_params
        params.require(:isbn).permit(:isbn)
    end
end
