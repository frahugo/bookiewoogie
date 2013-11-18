class Author < ActiveRecord::Base
  has_many :book_credits
  has_many :books, through: :book_credits
end
