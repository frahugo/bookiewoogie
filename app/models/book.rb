class Book < ActiveRecord::Base
  has_many :book_credits, dependent: :destroy
  has_many :authors, through: :book_credits

  mount_uploader :cover_image, ImageUploader

  def self.books_by_same_authors(book)
    book.authors.inject([]) { |sum, author| sum + author.books }.uniq  - [book]
  end
end
