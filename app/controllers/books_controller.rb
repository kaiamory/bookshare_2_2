class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @q = Book.ransack(params[:q])
    @books = @q.result(distinct: true).includes(:author_writers, :reviews,
                                                :users).page(params[:page]).per(10)
  end

  def show
    @review = Review.new
    @author = Author.new
  end

  def new
    @book = Book.new
  end

  def edit; end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book, notice: "Book was successfully created."
    else
      render :new
    end
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: "Book was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: "Book was successfully destroyed."
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name, :author, :genre, :page_length,
                                 :user_id, :author_id)
  end
end
