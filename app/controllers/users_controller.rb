class UsersController < ApplicationController
  def show
     @user=User.find(params[:id])
     @post_images = @user.post_images    
  end

  def edit
  end
  
  def index
     @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    if book.save
    redirect_to book_path(book.id)
    else
    @books= Book.all
    @book = Book.new(book_params)
    if @book.save
    redirect_to book_path(book.id)
    else
      render :index
    end
    end
  end
  
end
