class BooksController < ApplicationController
  respond_to :html, :json

  include ActionView::Helpers::NumberHelper

  def index
    @books = Book.all
  end

  def show
    @book = Book.find params[:id]
    fetch_related_books(@book)

    respond_with(@book)
  end

  def recommend
    book = Book.find(params[:id])
    BookMailer.recommendation(book).deliver
    redirect_to book, notice: "You recommended #{book.title} (#{number_to_currency book.price})"
  end

private

  def fetch_related_books(book)
    @authors_books = Book.books_by_same_authors(book)
    @other_books = Book.all - [book]
  end

end
