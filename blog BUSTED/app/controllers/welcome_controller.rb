class WelcomeController < ApplicationController
  def index
    
  end
  
  def create 
    render plain: params[:isbn].inspect 
  end 
  
end
