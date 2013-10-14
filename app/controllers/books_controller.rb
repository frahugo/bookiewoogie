class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find params[:id]
    @authors_books = @book.authors.inject([]) { |sum, author| sum + author.books }.uniq  - [@book]
    @other_books = Book.all - [@book]
  end
end
