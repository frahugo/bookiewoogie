class BooksController < ApplicationController
  respond_to :html, :json

  def index
    @books = Book.all.decorate
  end

  def show
    book = Book.find params[:id]
    fetch_related_books(book)

    @book = book.decorate

    respond_with(@book)
  end

  def recommend
    book = Book.find(params[:id]).decorate
    BookMailer.recommendation(book).deliver
    redirect_to book, notice: "You recommended #{book.title} (#{book.price})"
  end

private

  def fetch_related_books(book)
    @authors_books = Book.books_by_same_authors(book)
    @other_books = Book.all - [book]
  end

end
