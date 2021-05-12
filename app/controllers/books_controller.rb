class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path(dook.id)

  end

  def edit
  end

  private
  def book_params
    params.require(:book).params(:title, :category, :body)
  end
end
