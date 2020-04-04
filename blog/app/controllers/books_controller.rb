class BooksController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:isbn].inspect
    end
end
