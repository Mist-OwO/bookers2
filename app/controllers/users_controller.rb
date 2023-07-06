class UsersController < ApplicationController
  def new
    @book = Book.new
  end   
  
  def create
    @book = Book.new(book_params)
  end
    
  
  def index
    
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end 
end
