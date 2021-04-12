class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    if @book.save
      # 変数flash[:notice]に表示したいメッセージを代入する
      flash[:notice]="Book was successfully created."
      redirect_to @book
    else
      @books = Book.all
      render "index"
    end
  end
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])

  end




  def edit
    @book = Book.find(params[:id])
  end



  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path, notice: "Book was successfully updated."
    else
      render "books/edit"
    end
  end



  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to @book
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
